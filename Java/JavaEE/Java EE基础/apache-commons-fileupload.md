## Apache 文件上传的组件

### 直接上代码，自己看
```java
Map<String, String> map = new HashMap<>();
try
{
	//获取请求体中的内容
	DiskFileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	List<FileItem> items = upload.parseRequest(request);
			
	for (FileItem fileItem : items)
	{
		if(fileItem.isFormField())
		{
		    //普通的键值对
			//System.out.println(fileItem.getFieldName()); //获取表单项的name属性值
			//System.out.println(fileItem.getName());      //null
			//System.out.println(fileItem.getString());    //获取表单项的value属性值
			//System.out.println(fileItem.getString("utf-8"));   //解决中文乱码
			map.put(fileItem.getFieldName(), fileItem.getString("utf-8"));
		}
		else
		{
		    //文件 
			//System.out.println(fileItem.getFieldName());  //获取表单项文件的name属性值
			//System.out.print(fileItem.getName());       //文件名
			//System.out.println(fileItem.getString());     //文件二进制内容转换成的字符串
					
			//获取文件流
			String key = fileItem.getFieldName();
			String fileName = UUIDUtils.getId()+"_"+DateUtil.format(new Date(), "yyy-MM-dd-HH-mm-ss")+"_"+fileItem.getName();
			try(InputStream in = fileItem.getInputStream())
			{
				String path = "/upload/";
				String filepath = getServletContext().getRealPath(path);
				File f = new File(filepath,fileName);
				if(!f.exists())
				{
					f.createNewFile(); 
				}
				try(FileOutputStream fos = new FileOutputStream(f))
				{
				    /*byte[] buf = new byte[1024*1024];
					int len=0;
					while((len=in.read(buf, 0, buf.length))!=-1)
					{
						fos.write(buf, 0, len);
					}*/
					IOUtils.copy(in, fos);
					map.put(key, path+fileName);
				}
			    catch (Exception e)
				{
					// TODO: handle exception
				}
						
			}
			catch(Exception e) 
			{
				// TODO: handle exception
			}						
		}
	}
}
catch (FileUploadException e)
{
    // TODO Auto-generated catch block
	e.printStackTrace();
}
for (Entry<String, String> entry : map.entrySet())
{
	System.out.println(entry.getKey()+"=="+entry.getValue());
}
```