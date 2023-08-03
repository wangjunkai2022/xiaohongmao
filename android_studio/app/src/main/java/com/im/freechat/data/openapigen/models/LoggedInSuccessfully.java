package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.openapigen.models.SocketMessage;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: LoggedInSuccessfully.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "type", "Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;", t.b.f83859d, "Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;", "(Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;)V", "getState", "()Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;", "getType", "()Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "State", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class LoggedInSuccessfully implements SocketMessage {
    @g
    private final State state;
    @g
    private final Type type;

    /* compiled from: LoggedInSuccessfully.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "outdated", "fresh", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum State {
        outdated("outdated"),
        fresh("fresh");
        
        @g
        private final String value;

        State(String str) {
            this.value = str;
        }

        @g
        public final String getValue() {
            return this.value;
        }
    }

    /* compiled from: LoggedInSuccessfully.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "loggedInSuccessfully", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        loggedInSuccessfully("LoggedInSuccessfully");
        
        @g
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @g
        public final String getValue() {
            return this.value;
        }
    }

    public LoggedInSuccessfully(@com.squareup.moshi.g(name = "type") @g Type type, @com.squareup.moshi.g(name = "state") @g State state) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(state, "state");
        this.type = type;
        this.state = state;
    }

    public static /* synthetic */ LoggedInSuccessfully copy$default(LoggedInSuccessfully loggedInSuccessfully, Type type, State state, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            type = loggedInSuccessfully.type;
        }
        if ((i4 & 2) != 0) {
            state = loggedInSuccessfully.state;
        }
        return loggedInSuccessfully.copy(type, state);
    }

    @g
    public final Type component1() {
        return this.type;
    }

    @g
    public final State component2() {
        return this.state;
    }

    @g
    public final LoggedInSuccessfully copy(@com.squareup.moshi.g(name = "type") @g Type type, @com.squareup.moshi.g(name = "state") @g State state) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(state, "state");
        return new LoggedInSuccessfully(type, state);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LoggedInSuccessfully) {
            LoggedInSuccessfully loggedInSuccessfully = (LoggedInSuccessfully) obj;
            return this.type == loggedInSuccessfully.type && this.state == loggedInSuccessfully.state;
        }
        return false;
    }

    @Override // com.im.freechat.data.openapigen.models.SocketMessage
    @g
    public String getClassName() {
        return SocketMessage.DefaultImpls.getClassName(this);
    }

    @g
    public final State getState() {
        return this.state;
    }

    @g
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        return (this.type.hashCode() * 31) + this.state.hashCode();
    }

    @g
    public String toString() {
        return "LoggedInSuccessfully(type=" + this.type + ", state=" + this.state + ')';
    }
}
