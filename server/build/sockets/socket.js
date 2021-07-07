"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const __1 = require("..");
__1.io.on('connection', (socket) => {
    console.log('a user connected');
    socket.on('transaction-real-time', (payload) => __awaiter(void 0, void 0, void 0, function* () {
        console.log('emitiendo los valores');
        socket.emit('transaction-real-time', payload);
    }));
    socket.on('testing', () => {
        console.log('tesint this ');
    });
    socket.on('disconnect', () => {
        console.log('user disconnected');
    });
});
//# sourceMappingURL=socket.js.map