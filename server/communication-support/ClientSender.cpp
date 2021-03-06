//
// Created by ndv on 6/16/19.
//

#include "ClientSender.h"
#include <iostream>

ClientSender::ClientSender(StageStatusQueue &stageQueue, Socket &socket) :
                            stageStatusQueue(stageQueue),
                            clientProtocol(socket) {
}

ClientSender::~ClientSender() {}

void ClientSender::run() {
    while (!_isDead) {
        try {
            // It should block here until there's something in the queue.
            std::string stageStatus = stageStatusQueue.pop();
            // Check for suicide pill and exit loop if it receives one.
            if (stageStatus.compare(THREAD_SUICIDE_PILL) == 0){
                _isDead = true;
                break;
            }
            clientProtocol.sendMessage(stageStatus);
        } catch (const std::exception &e) {
            std::cout << e.what() << std::endl;
            _isDead = true;
        } catch (...) {
            _isDead = true;
            std::cout << "Unexpected crash." << std::endl;
            return;
        }
    }
}

void ClientSender::stop() {
    _isDead = true;
}
