
import UIKit
import MessageUI
//import messageUI allows access to the users email



class ViewController: UIViewController, MFMailComposeViewControllerDelegate {
// internal structure of app
    
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var thirdLabel: UILabel!
    
    // Connected to Main storyboard labels -
    
    
    
    let identifierWord = IdentifierWord()
    let wordManager = WordManager()
    let secondWord = SecondWord()
    
    
    //class names, used to identify classes and simplify the code
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Touch screen instead of using button to make app interface easier to use
     
        print(identifierWord.randomWord())
        firstLabel.text = identifierWord.randomWord()
        
        print(wordManager.randomWord())
       secondLabel.text = wordManager.randomWord()
       
        print(secondWord.randomWord())
        thirdLabel.text = secondWord.randomWord()
    }
    // Puts all classes together. .randomWord randomises and prints one of the options set in another class
    
    //View controller life cycle - View did load,
    
    @IBAction func sendEmail(_ sender: Any) {
        //button to send email ideas
        
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail(){ self.present(mailComposeViewController, animated: true, completion: nil)} else{ showMailError()}
        
    }
    
    func configureMailController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        
        //allows the mail view controller to come up
        
        
        mailComposerVC.setToRecipients(["finleyjsampson@insultr.com"])
        
        mailComposerVC.setSubject("Insult Idea Submission")
   
        mailComposerVC.setMessageBody("Insert your ideas here.", isHTML: false)
        
        //presets as to what the users email will pop up and say
        
        return mailComposerVC
        
    }
            
    func showMailError() {
        
        let sendMailErrorAlert = UIAlertController(title: "Email Not Supported", message: "Your device could not send Email.", preferredStyle: .alert)
        //the alert
        
        let dismiss = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
        
        sendMailErrorAlert.addAction(dismiss)
        
        self.present(sendMailErrorAlert, animated: true, completion: nil)
        
        // alert for devices that do not suppport email or do not have an email account set up
        
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
        
        //closes the email once the user has sent or has pressed cancel
    
        
        
    }
            
    
    
    }




    
    
    

