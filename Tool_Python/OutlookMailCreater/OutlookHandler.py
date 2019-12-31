import glob
import os

import win32com.client


class OutlookHandler:
    def __init__(self):
        self.outlook = win32com.client.Dispatch("Outlook.Application")
        self.newMail = None

    def create(self):
        self.newMail = self.outlook.CreateItem(0)

    def setting(self, argMailformat, argSenderaddress,
                argReceiveraddressset, argCc_Addressset,
                argBcc_Addressset, argTitle,
                argAttachedfilefolderpath, argBody):

        # メールアイテムに情報設定
        self.newMail.BodyFormat = argMailformat
        try:
            self.newMail._oleobj_.Invoke(*(64209, 0, 8, 0, self.outlook.Session.Accounts(argSenderaddress)))
        except:
            pass
        self.newMail.To = argReceiveraddressset
        self.newMail.cc = argCc_Addressset
        self.newMail.Bcc = argBcc_Addressset
        self.newMail.Subject = argTitle
        self.newMail.Body = argBody \
                            + os.linesep \
                            + self.newMail.GetInspector.WordEditor.Bookmarks('_MailAutoSig').Range.Text  # 本文に署名を付与

        # 添付ファイル取得
        if os.path.isdir(argAttachedfilefolderpath):
            for file in glob.glob(argAttachedfilefolderpath + '\\*'):
                if os.path.isfile(file):
                    self.newMail.Attachments.Add(file)

    def display(self):
        self.newMail.Display(False)

    def release(self):
        self.newMail = None
        self.outlook = None
