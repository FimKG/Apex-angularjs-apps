public with sharing class EmailManager {
    public EmailManager() {

    }

    public void sendMail(String address, String subject, String body) {
        // Create an email message object
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        //for multiple emails
        String[] toAddresses = new String[] {address};
        //set Email Contents
        mail.setToAddresses(toAddresses);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        // Pass this email message
        Messaging.SendEmailResult[] results = Messaging.sendEmail(
                new Messaging.SingleEmailMessage[] {mail});
        // Call a helper method to inspect the returned results
        inspectResults(results);

    }

    private static Boolean inspectResults(Messaging.sendEmailResult[] results) {
        Boolean sendResults = true;

        for(Messaging.SendEmailResult res: results) {
            if(res.isSuccess()) {
                System.debug('Email sent successfully');
            } else {
                sendResults = false;
                System.debug('The following errors occurred: ' + res.getErrors());
            }
        }
        return sendResults;
    }
}