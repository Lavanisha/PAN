package demo;

import java.io.FileOutputStream;

import java.io.OutputStream;

import javax.xml.transform.Source;

import javax.xml.transform.Transformer;

import javax.xml.transform.TransformerFactory;

import javax.xml.transform.stream.StreamResult;

import javax.xml.transform.stream.StreamSource;

public class main {

 public static void main(String[] args) throws Exception {

  try {

   TransformerFactory tFactory = TransformerFactory.newInstance();

   Source xslDoc = new StreamSource("C:/Users/Sony/Desktop/PAN/src/data/pan.xsl");

   Source xmlDoc = new StreamSource("C:/Users/Sony/Desktop/PAN/src/data/pan.xml");

   String outputFileName = "C:/Users/Sony/Desktop/PAN/src/data/pan.html";

   OutputStream htmlFile = new FileOutputStream(outputFileName);

   Transformer trasform = tFactory.newTransformer(xslDoc);

   trasform.transform(xmlDoc, new StreamResult(htmlFile));

  } catch (Exception e)

  {

   e.printStackTrace();

  }

 }

}