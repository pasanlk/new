import yagmail
import main

def send_mail():
    main.export()
    from_ = 'testguy191@gmail.com'
    password = 'test0987test'
    receiver = "cmind488@gmail.com"
    body = 'this is a python mail'
    filename = 'ds.xls'

    yag = yagmail.SMTP(from_, password)
    yag.send(
        to=receiver,
        subject='test mail',
        contents=body,
        attachments=filename
    )