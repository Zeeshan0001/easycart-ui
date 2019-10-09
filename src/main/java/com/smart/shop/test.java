////package com.smart.shop;
//
//import java.io.*;
//
//
//public class test {
//
//
//
//
//
//    HttpClient httpClient = new DefaultHttpClient();
//    try {
//        HttpGet httpGetRequest = new HttpGet("http://search.twitter.com/search.json?q=%40apple");
//        HttpResponse httpResponse = httpClient.execute(httpGetRequest);
//
//        System.out.println("----------------------------------------");
//        System.out.println(httpResponse.getStatusLine());
//        System.out.println("----------------------------------------");
//
//        HttpEntity entity = httpResponse.getEntity();
//
//        byte[] buffer = new byte[1024];
//        if (entity != null) {
//            InputStream inputStream = entity.getContent();
//            try {
//                int bytesRead = 0;
//                BufferedInputStream bis = new BufferedInputStream(inputStream);
//                while ((bytesRead = bis.read(buffer)) != -1) {
//                    String chunk = new String(buffer, 0, bytesRead);
//                    System.out.println(chunk);
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//            } finally {
//                try { inputStream.close(); } catch (Exception ignore) {}
//            }
//        }
//    } catch (Exception e) {
//        e.printStackTrace();
//    } finally {
//        httpClient.getConnectionManager().shutdown();
//    }
//}
//
//}
