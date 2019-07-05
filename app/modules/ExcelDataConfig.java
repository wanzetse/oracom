package modules;
import javax.persistence.*;
import controllers.BranchesController;
import models.*;
import java.util.*;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import play.mvc.Http;
import io.ebean.Model;

import java.io.*;
import java.time.LocalDateTime;
import java.util.Locale;

import static org.hibernate.util.ConfigHelper.getResourceAsStream;

public class ExcelDataConfig {
    public static HSSFWorkbook wb;
    public static HSSFSheet sheet;

   /* public static String[] sheetColumns = {"Company_Name", "Company_Category", "Company_Subcategory", "Email_1", "Email_2",
            "Phone_1", "Phone_2", "Website", "County", "Town", "Street_Name", "Building", "Latitude",
            "Longitude", "companyBranch", "Status", "Services", "Comments", "CreatedBy", "DateCreated"
    };*/

    public ExcelDataConfig(String excelPath) {
        try {
            File src = new File(excelPath);
            FileInputStream fis = new FileInputStream(src);
            wb = new HSSFWorkbook(fis);
        } catch (Exception e) {

            System.out.println(e.getMessage());
        }

    }
 static DataFormatter formatter = new DataFormatter(Locale.UK);
  private static String getSheetvalue(org.apache.poi.xssf.usermodel.XSSFCell val){
    
   
    String s=formatter.formatCellValue(val);

    if(s.length()<1){
                s="null";
            }else{
                s=s.trim();
            }
            return s;
        }
    @play.db.ebean.Transactional
    public static void readExcel(File uploadedFile, String createdBy, String dateCreated) throws IOException {


        

        InputStream file = new FileInputStream(new File(uploadedFile.getPath()));

        XSSFWorkbook xssfWorkbook = new XSSFWorkbook(file);
        XSSFSheet sheet = xssfWorkbook.getSheetAt(0);

       for(int i=0;i<sheet.getLastRowNum();i++){
         Branch oldBranch=new Branch(
            getSheetvalue(sheet.getRow(i).getCell(0)),
            getSheetvalue(sheet.getRow(i).getCell(1)),
            getSheetvalue(sheet.getRow(i).getCell(2)),
            getSheetvalue(sheet.getRow(i).getCell(3)),
            getSheetvalue(sheet.getRow(i).getCell(4)),
            getSheetvalue(sheet.getRow(i).getCell(5)),
            getSheetvalue(sheet.getRow(i).getCell(6)),
            getSheetvalue(sheet.getRow(i).getCell(7)),
            getSheetvalue(sheet.getRow(i).getCell(8)),
            getSheetvalue(sheet.getRow(i).getCell(9)),
            getSheetvalue(sheet.getRow(i).getCell(10)),
            getSheetvalue(sheet.getRow(i).getCell(11)),
            getSheetvalue(sheet.getRow(i).getCell(12)),
            getSheetvalue(sheet.getRow(i).getCell(13)),
            getSheetvalue(sheet.getRow(i).getCell(14)),
            getSheetvalue(sheet.getRow(i).getCell(15)),
            getSheetvalue(sheet.getRow(i).getCell(16)),
            getSheetvalue(sheet.getRow(i).getCell(17)),
            getSheetvalue(sheet.getRow(i).getCell(18)),
            getSheetvalue(sheet.getRow(i).getCell(19))

            );
         oldBranch.save();
        // newBranch.add(oldBranch);
         }
     


        try {

            file.close();

        } catch (Exception e1) {
            e1.printStackTrace();
        }


    }

    public static void readExcelLeaders(File uploadedFile, String createdBy, String dateCreated) throws IOException {


        DataFormatter formatter = new DataFormatter(Locale.UK);

        InputStream file = new FileInputStream(new File(uploadedFile.getPath()));

        XSSFWorkbook xssfWorkbook = new XSSFWorkbook(file);
        XSSFSheet sheet = xssfWorkbook.getSheetAt(0);

        XSSFRow row;
        for (int i = 1; i < sheet.getLastRowNum(); i++) {  //points to the starting of excel i.e excel first row
            row = sheet.getRow(i);  //sheet number


            String fullNames;

            if (row.getCell(0) == null) {
                fullNames = "null";

            } else {

                fullNames = formatter.formatCellValue(row.getCell(0));

            }   //else copies cell data to name variable


            String Position;

            if (row.getCell(1) == null) {
                Position = "null";

            } else {
                Position = formatter.formatCellValue(row.getCell(1));
            }

            String status;

            if (row.getCell(2) == null) {
                status = "null";
            } else {
                status = formatter.formatCellValue(row.getCell(2));
            }

            String leaderCounty;

            if (row.getCell(3) == null) {
                leaderCounty = "null";
            } else {
                leaderCounty = formatter.formatCellValue(row.getCell(3));
            }

            String leaderConstituency;

            if (row.getCell(4) == null) {
                leaderConstituency = "null";
            } else {
                leaderConstituency = formatter.formatCellValue(row.getCell(4)).trim();
            }

            String leaderWard;

            if (row.getCell(5) == null) {
                leaderWard = "null";
            } else {
                leaderWard = formatter.formatCellValue(row.getCell(5)).trim();
            }

            String leaderComments;

            if (row.getCell(6) == null) {
                leaderComments = "null";
            } else {
                leaderComments = formatter.formatCellValue(row.getCell(6));
            }


            Leaders leader = new Leaders(fullNames, Position, status, leaderCounty, leaderConstituency, leaderWard, leaderComments,
                    createdBy, dateCreated);

            leader.save();

            //log the data
            BranchesController.logger.info("####################################################UPLOADED BY {} ", createdBy);


        }

        try {

            file.close();

        } catch (Exception e1) {
            e1.printStackTrace();
        }


    }

    public static void importExcelPersonsData(File uploadedFile, String createdBy, String dateCreated) throws IOException {


        DataFormatter formatter = new DataFormatter(Locale.UK);

        InputStream file = new FileInputStream(new File(uploadedFile.getPath()));

        XSSFWorkbook xssfWorkbook = new XSSFWorkbook(file);
        XSSFSheet sheet = xssfWorkbook.getSheetAt(0);

        XSSFRow row;
        for (int i = 1; i < sheet.getLastRowNum(); i++) {  //points to the starting of excel i.e excel first row
            row = sheet.getRow(i);  //sheet number


            String company;

            if (row.getCell(0) == null) {
                company = "null";

            } else {

                company = formatter.formatCellValue(row.getCell(0));

            }   //else copies cell data to name variable

            String fullNames;

            if (row.getCell(1) == null) {
                fullNames = "null";
            } else {

                fullNames = formatter.formatCellValue(row.getCell(1));
            }

            String Email1;

            if (row.getCell(2) == null) {
                Email1 = "null";

            } else {
                Email1 = formatter.formatCellValue(row.getCell(2));
            }

            String Email2;

            if (row.getCell(3) == null) {
                Email2 = "null";
            } else {
                Email2 = formatter.formatCellValue(row.getCell(3));
            }

            String Phone1;

            if (row.getCell(4) == null) {
                Phone1 = "null";
            } else {
                Phone1 = formatter.formatCellValue(row.getCell(4));
            }

            String Phone2;

            if (row.getCell(5) == null) {
                Phone2 = "null";
            } else {
                Phone2 = formatter.formatCellValue(row.getCell(5)).trim();
            }

            String Position;

            if (row.getCell(6) == null) {
                Position = "null";
            } else {
                Position = formatter.formatCellValue(row.getCell(6));
            }
            String SideHustle;

            if (row.getCell(7) == null) {
                SideHustle = "null";
            } else {
                SideHustle = formatter.formatCellValue(row.getCell(7));
            }

            String Sex;

            if (row.getCell(8) == null) {
                Sex = "null";
            } else {
                Sex = formatter.formatCellValue(row.getCell(8));
            }


            String Status;

            if (row.getCell(9) == null) {
                Status = "null";
            } else {
                Status = formatter.formatCellValue(row.getCell(9));
            }
            String Comments;

            if (row.getCell(10) == null) {
                Comments = "null";
            } else {
                Comments = formatter.formatCellValue(row.getCell(10));
            }

            HeadOffice person = new HeadOffice(company, fullNames, Email1, Email2,
                    Phone1, Phone2, Position, SideHustle, Sex, Status, Comments, dateCreated, createdBy);

            person.save();

            // logger.info("####################################################APPROVED STATUS {} ", website);

        }

        try {

            file.close();

        } catch (Exception e1) {
            e1.printStackTrace();
        }


    }

    public static void importExcelCorporateEmails(File uploadedFile, String createdBy, String dateCreated) throws IOException {


        DataFormatter formatter = new DataFormatter(Locale.UK);

        InputStream file = new FileInputStream(new File(uploadedFile.getPath()));

        XSSFWorkbook xssfWorkbook = new XSSFWorkbook(file);
        XSSFSheet sheet = xssfWorkbook.getSheetAt(0);

        XSSFRow row;
        for (int i = 1; i < sheet.getLastRowNum(); i++) {  //points to the starting of excel i.e excel first row
            row = sheet.getRow(i);  //sheet number


            String email;

            if (row.getCell(0) == null) {
                email = "null";

            } else {

                email = formatter.formatCellValue(row.getCell(0));

            }   //else copies cell data to name variable

            String Description;

            if (row.getCell(1) == null) {
                Description = "null";
            } else {

                Description = formatter.formatCellValue(row.getCell(1));
            }

            String Comments;

            if (row.getCell(2) == null) {
                Comments = "null";

            } else {
                Comments = formatter.formatCellValue(row.getCell(2));
            }

            CorporateEmails corporateEmails = new CorporateEmails(email, Description, Comments,
                    createdBy, dateCreated);

            corporateEmails.save();

            // logger.info("####################################################APPROVED STATUS {} ", website);

        }

        try {

            file.close();

        } catch (Exception e1) {
            e1.printStackTrace();
        }


    }

    public static void importExcelIndividualEmails(File uploadedFile, String createdBy, String dateCreated) throws IOException {


        DataFormatter formatter = new DataFormatter(Locale.UK);

        InputStream file = new FileInputStream(new File(uploadedFile.getPath()));

        XSSFWorkbook xssfWorkbook = new XSSFWorkbook(file);
        XSSFSheet sheet = xssfWorkbook.getSheetAt(0);

        XSSFRow row;
        for (int i = 1; i < sheet.getLastRowNum(); i++) {  //points to the starting of excel i.e excel first row
            row = sheet.getRow(i);  //sheet number


            String email;

            if (row.getCell(0) == null) {
                email = "null";

            } else {

                email = formatter.formatCellValue(row.getCell(0));

            }   //else copies cell data to name variable

            String Description;

            if (row.getCell(1) == null) {
                Description = "null";
            } else {

                Description = formatter.formatCellValue(row.getCell(1));
            }

            String Comments;

            if (row.getCell(2) == null) {
                Comments = "null";

            } else {
                Comments = formatter.formatCellValue(row.getCell(2));
            }

            IndividualEmails individualEmails = new IndividualEmails(email, Description, Comments,
                    createdBy, dateCreated);

            individualEmails.save();

            // logger.info("####################################################APPROVED STATUS {} ", website);

        }

        try {

            file.close();

        } catch (Exception e1) {
            e1.printStackTrace();
        }

    }

    public static void importExcelIndividualPhoneNumbers(File uploadedFile, String createdBy, String dateCreated) throws IOException {


        DataFormatter formatter = new DataFormatter(Locale.UK);

        InputStream file = new FileInputStream(new File(uploadedFile.getPath()));

        XSSFWorkbook xssfWorkbook = new XSSFWorkbook(file);
        XSSFSheet sheet = xssfWorkbook.getSheetAt(0);

        XSSFRow row;
        for (int i = 1; i < sheet.getLastRowNum(); i++) {  //points to the starting of excel i.e excel first row
            row = sheet.getRow(i);  //sheet number


            String phonNumber;

            if (row.getCell(0) == null) {
                phonNumber = "null";

            } else {

                phonNumber = formatter.formatCellValue(row.getCell(0));

            }   //else copies cell data to name variable

            String Status;

            if (row.getCell(1) == null) {
                Status = "null";
            } else {

                Status = formatter.formatCellValue(row.getCell(1));
            }

            String Comments;

            if (row.getCell(2) == null) {
                Comments = "null";

            } else {
                Comments = formatter.formatCellValue(row.getCell(2));
            }

            Phones phoneNumbers = new Phones(phonNumber, Status, Comments,
                    createdBy, dateCreated);

            phoneNumbers.save();

            // logger.info("####################################################APPROVED STATUS {} ", website);

        }

        try {

            file.close();

        } catch (Exception e1) {
            e1.printStackTrace();
        }

    }

    public static void importExcelPersonsByRegion(File uploadedFile, String createdBy, String dateCreated) throws IOException {


        DataFormatter formatter = new DataFormatter(Locale.UK);

        InputStream file = new FileInputStream(new File(uploadedFile.getPath()));

        XSSFWorkbook xssfWorkbook = new XSSFWorkbook(file);
        XSSFSheet sheet = xssfWorkbook.getSheetAt(0);

        XSSFRow row;
        for (int i = 1; i < sheet.getLastRowNum(); i++) {  //points to the starting of excel i.e excel first row
            row = sheet.getRow(i);  //sheet number


            String phonNumber;

            if (row.getCell(0) == null) {
                phonNumber = "null";

            } else {

                phonNumber = formatter.formatCellValue(row.getCell(0));

            }   //else copies cell data to name variable

            String Surname;

            if (row.getCell(1) == null) {
                Surname = "null";
            } else {

                Surname = formatter.formatCellValue(row.getCell(1));
            }

            String Othernames;

            if (row.getCell(2) == null) {
                Othernames = "null";

            } else {
                Othernames = formatter.formatCellValue(row.getCell(2));
            }
            String CountyName;

            if (row.getCell(3) == null) {
                CountyName = "null";

            } else {
                CountyName = formatter.formatCellValue(row.getCell(3));
            }
            String Constituency_name;

            if (row.getCell(4) == null) {
                Constituency_name = "null";

            } else {
                Constituency_name = formatter.formatCellValue(row.getCell(4));
            }
            String WardName;

            if (row.getCell(5) == null) {
                WardName = "null";

            } else {
                WardName = formatter.formatCellValue(row.getCell(5));
            }
            String PollingName;

            if (row.getCell(6) == null) {
                PollingName = "null";

            } else {
                PollingName = formatter.formatCellValue(row.getCell(6));
            }

            String Email;
            if (row.getCell(7) == null) {
                Email = "null";

            } else {
                Email = formatter.formatCellValue(row.getCell(7));
            }
            String Gender;
            if (row.getCell(8) == null) {
                Gender = "null";

            } else {
                Gender = formatter.formatCellValue(row.getCell(8));
            }
            String Comments;
            if (row.getCell(9) == null) {
                Comments = "null";

            } else {
                Comments = formatter.formatCellValue(row.getCell(9));
            }

            PersonsByRegion persons = new PersonsByRegion(phonNumber, Surname, Othernames, CountyName, Constituency_name, WardName,
                    PollingName, Email, Gender, Comments, createdBy, dateCreated);

            persons.save();

            // logger.info("####################################################APPROVED STATUS {} ", website);

        }

        try {

            file.close();

        } catch (Exception e1) {
            e1.printStackTrace();
        }

    }

    public static String getData(int sheetNumber, int row, int column) {
        DataFormatter formatter = new DataFormatter();

        sheet = wb.getSheetAt(sheetNumber);
        String data1 = formatter.formatCellValue(sheet.getRow(row).getCell(column));
        //  String data =sheet.getRow(row).getCell(column).getStringCellValue();
        //  return data;
        return data1;

    }
/*
    public  File convertExcelToPDF(String filepath){

        InputStream in = getResourceAsStream(filepath);
        PrintWriter out = new PrintWriter(new FileWriter("./test-xlsx.html"));

        // this class is based on code found at
        // https://svn.apache.org/repos/asf/poi/trunk/src/examples/src/org/apache/poi/ss/examples/html/ToHtml.java
        // and will convert .xlsx files
        ExcelToHtmlConverter toHtml = ExcelToHtmlConverter.create(in, out);
        toHtml.setCompleteHTML(true);
        toHtml.printPage();


        // rather than writing to file get the HTML in memory and use
        // FlyingSaucer or OpenHTMlToPdf

        in.close();
    }
    */
}
