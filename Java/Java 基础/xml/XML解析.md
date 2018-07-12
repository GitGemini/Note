## XML解析
>有很多种解析方式，常用的有两种
1.DOM
    把整个XML全部读取到内存中，形成树状结构,整个文档称之为Document对象，属性对应Attribute对象,所有的元素节点对应Element对象,文本也可以称之为Text对象,以上所有的节点都可以称之为Node节点。如果XML特别大，就会造成内存溢出.可以对文档进行增删改查操作

>2.SAX (Simple API for Xml) 
    基于事件的驱动,读取一行解析一行。不会造成内存溢出，不可以对文档进行增删改操作,只能查询。

## 针对以上两种解析方式的API(两种方式都支持)
### JAXP sun公司提供(Java API for XML  Processing)
>是JAVASE 的一部分
 org.w3c.dom:提供DOM方式解析XML的标准接口
 org.xml.sax:提供SAX方式解析XML的标准接口
 javax.xml：提供了解析XML的类
 javax.xml.parsers包中定义了几个工厂类,我们可以调用这些工厂类，得到对XML文档进行解析的DOM和SAX解析器对象
 1.DocumentBuilderFactory 
 2.SAXParserFactory
 3.TransformFactory 回写  
 4.DocumentBuilder
 5.Document
 6.Element
 7.NodeList和Node
 8.SAXParser
 9.DefaultHandler 
 	SAX解析的事件处理程序，一般通过继承该类，并重写
	 startElement()
	 characters()
	 endElement()
```Java
//DOM 非常类似 js DOM
public class JAXPDom
{
	public static void main(String[] args)
	{
		//method1();
		method2();
		//method3();
	}

	public static void method3()
	{
		try
		{
			Document document = JaxpDomUtil.getDocument("./XmlDocument/book3.xml");
			Node node = document.getElementsByTagName("其他").item(0);
			node.getParentNode().removeChild(node);
			JaxpDomUtil.writeXml(document, "./XmlDocument/book3.xml");
			System.out.println("ok");
			
		}
		catch (ParserConfigurationException | SAXException | IOException | TransformerFactoryConfigurationError | TransformerException e)
		{
			e.printStackTrace();
		}
		
	}

	public static void method1()
	{
		try
		{
			DocumentBuilder dBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document document = dBuilder.parse("./XmlDocument/book2.xml");
			System.out.println(document.getDocumentURI());
			System.out.println(document.getXmlEncoding());
			NodeList nl = document.getElementsByTagName("书");
			
			for(int i=0;i<nl.getLength();i++)
			{
				Element element = (Element)nl.item(i);
				NamedNodeMap map = element.getAttributes();
				for(int j=0;j<map.getLength(); j++)
				{
					Node n = map.item(j);
					System.out.println(n.getNodeName()+":"+n.getNodeValue());
				}
			}
		}
		catch (ParserConfigurationException | SAXException | IOException e)
		{
			e.printStackTrace();
		}
	}
	
	public static void method2()
	{
		try
		{
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document document = builder.parse("./XmlDocument/book3.xml");
			Node node = document.getElementsByTagName("书").item(1);
			Element element = document.createElement("其他");
			element.setTextContent("这是一本武侠小说");
			//node.appendChild(element);
			node.insertBefore(element, node.getFirstChild());
			//回写
			Transformer transformer = TransformerFactory.newInstance().newTransformer();
			transformer.transform(new DOMSource(document), new StreamResult("XmlDocument/book3.xml"));
			
			System.out.println("ok!");
		}
		catch (ParserConfigurationException | SAXException | IOException e)
		{
			e.printStackTrace();
		}
		catch (TransformerConfigurationException e)
		{
			e.printStackTrace();
		}
		catch (TransformerFactoryConfigurationError e)
		{
			e.printStackTrace();
		}
		catch (TransformerException e)
		{
			e.printStackTrace();
		}
	}
}

//SAX 解析 
package com.ph.xml;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class JAXPSaxDemo
{

	public static void main(String[] args)
	{
		saxMethod();
	}

	public static void saxMethod()
	{
		try
		{
			SAXParser sax = SAXParserFactory.newInstance().newSAXParser();
			MyHandler myHandler = new MyHandler();
			sax.parse("./XmlDocument/book2.xml", myHandler);
			for(String s:myHandler.getBookList())
			{
				System.out.println(s);
			}
			
		}
		catch (ParserConfigurationException | SAXException | IOException e)
		{
			e.printStackTrace();
		}
	}

}

class MyHandler extends DefaultHandler
{
	private ArrayList<String> list = new ArrayList<>();
	private String book;
	private boolean isBook=false;
	//只要一解析到元素的开始，默认调用方法，把内容赋值给参数
	@Override
	public void startElement(String uri, String localName, String qName, org.xml.sax.Attributes attributes)
			throws SAXException
	{
		if(qName.equals("书名"))
		{
			isBook=true;
		}
	}

	//只要一解析到本文的内容。自动调用该方法，把解析的内容赋值给该参数
	@Override
	public void characters(char[] ch, int start, int length) throws SAXException
	{
		if(isBook)
		{
			book=new String(ch,start,length);
		}
	}

	public List<String> getBookList()
	{
		return list;
	}

	//只要一解析到元素的结束，默认调用方法，把内容赋值给参数
	@Override
	public void endElement(String uri, String localName, String qName) throws SAXException
	{
		if(isBook)
		{
			list.add(book);
			isBook=false;
		}
	}
}
```
### JDOM
### dom4j 使用比较广泛
```java
//标准
SAXReader reader = new SAXReader();
		try
		{
			Document document = reader.read("XmlDocument/book2.xml");
			Element root = document.getRootElement();
			Element book2 = root.elements().get(1);
			List<Element> list = book2.elements();
			Element element = DocumentHelper.createElement("附录");
			element.setText("www.0b1918.com");
			list.add(1, element);
			 
			OutputFormat format = OutputFormat.createPrettyPrint();
			format.setEncoding("utf-8");
			XMLWriter writer=null;
			try
			{
				writer = new XMLWriter(new FileOutputStream("XmlDocument/book2.xml"), format);
				writer.write(document);
			}
			catch (IOException e)
			{
				e.printStackTrace();
			}
			finally 
			{
				if(writer!=null)
				{
					try
					{
						writer.close();
					}
					catch (IOException e)
					{
						e.printStackTrace();
					}
				}
			}
			
		}
		catch (DocumentException e)
		{
			e.printStackTrace();
		}


//XPATH 语法
1. /AAA/BBB 获取AAA下的BBB  /表示根节点
2. //BBB  获取所有的BBB，不考虑层级关系
3. /AAA/BBB[1]  获取AAA下的第一个BBB元素 
4. /AAA/BBB[last()] 获取AAA下的最后一个BBB元素 
5. /AAA/BBB[@attr]  通过属性筛选
6. 更多用法请参考文档

SAXReader reader = new SAXReader();
try
{
	Document document = reader.read("XmlDocument/book2.xml");
	List<Node> list = document.selectNodes("//书[@ID=\"000001\"]/*");
	for (Node node : list)
	{
		System.out.println(node.getName()+":"+node.getText());
	}
}
catch (DocumentException e)
{
	e.printStackTrace();
}
```



