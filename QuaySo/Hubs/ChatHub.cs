﻿using Microsoft.AspNet.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuaySo.Hubs
{
    public class ChatHub : Hub
    {
        public void Send(string name)
        {
             Clients.All.broadcastMessage(name);
        }
    }
}