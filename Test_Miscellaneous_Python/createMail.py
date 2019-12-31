from win32com.client import Dispatch
import win32com

outlook = win32com.client.Dispatch("Outlook.Application")

mapi = outlook.GetNamespace("MAPI")
draft_box = mapi.Folders("rei.ishikawa@roboken2.com").Folders(4)

mail = outlook.CreateItem(0)
# mail.SentOnBehalfOfName = 'xyz@gmail.com'
# mail.Move(draft_box)
mail._oleobj_.Invoke(*(64209, 0, 8, 0, outlook.Session.Accounts("rei.ishikawa@roboken2.com")))
mail.To = 'mymail@gmail.com'
mail.Subject = 'Hello'
mail.HTMLBody = 'template'
# mail.SentOnBehalfOfName = 'xyz@gmail.com'
# mail.SendUsingAccount = outlook.Session.Accounts(2)

mail.Display(False)
