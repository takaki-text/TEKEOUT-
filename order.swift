//
//  order.swift
//  uuuuuu
//
//  Created by 永石天希 on 2020/02/05.
//  Copyright © 2020 永石天希. All rights reserved.
//

import SwiftUI
import MessageUI

struct order: View {
    @State private var isShowingMailView = false

    var body: some View {
        Button(action: {
            self.isShowingMailView.toggle()
        }) {
            VStack {
                Text("注文メールへ")
                    .font(.title)
                Text("料理名、個数、日時を入力してください")
                    .font(.title)
            }
        }
        .disabled(!MFMailComposeViewController.canSendMail())
        .sheet(isPresented: $isShowingMailView, content: {
            MailView(isShowing: self.$isShowingMailView)
        })
    }
}

