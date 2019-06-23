//
// Created by cecix on 22/06/19.
//

#ifndef PORTAL_DRAWER_H
#define PORTAL_DRAWER_H

#include "../common/Protocol.h"
#include <audio/SoundCodeQueue.h>
#include <audio/AudioSystem.h>
#include <communication-support/UserEventHandler.h>
#include <communication-support/EventSender.h>
#include <communication-support/StageStatusReceiver.h>
#include "../common/Window.h"
#include "../common/Sprite.h"
#include "../editor/Editor.h"
#include "views/Camera.h"
#include "../common/UserEventQueue.h"
#include "../common/StageStatusQueue.h"
#include "views/ViewManager.h"
#include <yaml-cpp/node/node.h>
#include "../common/constants.h"
class Drawer {
private:
    Protocol& clientProtocol;
    Socket& clientSocket;
public:
    Drawer(Protocol& clientProtocol, Socket& clientSocket);
    void draw(std::string& idChell);
};

#endif //PORTAL_DRAWER_H
