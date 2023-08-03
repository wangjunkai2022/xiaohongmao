package com.im.freechat.ui.chat.history;

import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.contact.Sender;
import com.im.freechat.shared.entities.message.Attachment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HistoryMediaAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b&\u0010'J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\nHÆ\u0003J?\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\nHÆ\u0001J\t\u0010\u0012\u001a\u00020\nHÖ\u0001J\t\u0010\u0013\u001a\u00020\bHÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\u000e\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010\u000f\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010 \u001a\u0004\b!\u0010\"R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010#\u001a\u0004\b$\u0010%¨\u0006("}, d2 = {"Lcom/im/freechat/ui/chat/history/a;", "", "Lcom/im/freechat/shared/entities/message/Attachment;", "a", "Lcom/im/freechat/shared/entities/contact/Sender;", "b", "", "c", "", "d", "", "e", "attachment", "sender", "sendTime", k4.b.f84734a, "content", "f", "toString", "hashCode", "other", "", "equals", "Lcom/im/freechat/shared/entities/message/Attachment;", "h", "()Lcom/im/freechat/shared/entities/message/Attachment;", "Lcom/im/freechat/shared/entities/contact/Sender;", "l", "()Lcom/im/freechat/shared/entities/contact/Sender;", "J", "k", "()J", "I", ContextChain.TAG_INFRA, "()I", "Ljava/lang/String;", "j", "()Ljava/lang/String;", "<init>", "(Lcom/im/freechat/shared/entities/message/Attachment;Lcom/im/freechat/shared/entities/contact/Sender;JILjava/lang/String;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final Attachment f42884a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Sender f42885b;

    /* renamed from: c  reason: collision with root package name */
    private final long f42886c;

    /* renamed from: d  reason: collision with root package name */
    private final int f42887d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private final String f42888e;

    public a(@m8.h Attachment attachment, @m8.g Sender sender, long j4, int i4, @m8.h String str) {
        Intrinsics.checkNotNullParameter(sender, "sender");
        this.f42884a = attachment;
        this.f42885b = sender;
        this.f42886c = j4;
        this.f42887d = i4;
        this.f42888e = str;
    }

    public static /* synthetic */ a g(a aVar, Attachment attachment, Sender sender, long j4, int i4, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            attachment = aVar.f42884a;
        }
        if ((i10 & 2) != 0) {
            sender = aVar.f42885b;
        }
        Sender sender2 = sender;
        if ((i10 & 4) != 0) {
            j4 = aVar.f42886c;
        }
        long j10 = j4;
        if ((i10 & 8) != 0) {
            i4 = aVar.f42887d;
        }
        int i11 = i4;
        if ((i10 & 16) != 0) {
            str = aVar.f42888e;
        }
        return aVar.f(attachment, sender2, j10, i11, str);
    }

    @m8.h
    public final Attachment a() {
        return this.f42884a;
    }

    @m8.g
    public final Sender b() {
        return this.f42885b;
    }

    public final long c() {
        return this.f42886c;
    }

    public final int d() {
        return this.f42887d;
    }

    @m8.h
    public final String e() {
        return this.f42888e;
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.f42884a, aVar.f42884a) && Intrinsics.areEqual(this.f42885b, aVar.f42885b) && this.f42886c == aVar.f42886c && this.f42887d == aVar.f42887d && Intrinsics.areEqual(this.f42888e, aVar.f42888e);
        }
        return false;
    }

    @m8.g
    public final a f(@m8.h Attachment attachment, @m8.g Sender sender, long j4, int i4, @m8.h String str) {
        Intrinsics.checkNotNullParameter(sender, "sender");
        return new a(attachment, sender, j4, i4, str);
    }

    @m8.h
    public final Attachment h() {
        return this.f42884a;
    }

    public int hashCode() {
        Attachment attachment = this.f42884a;
        int hashCode = (((((((attachment == null ? 0 : attachment.hashCode()) * 31) + this.f42885b.hashCode()) * 31) + a5.a.a(this.f42886c)) * 31) + this.f42887d) * 31;
        String str = this.f42888e;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    public final int i() {
        return this.f42887d;
    }

    @m8.h
    public final String j() {
        return this.f42888e;
    }

    public final long k() {
        return this.f42886c;
    }

    @m8.g
    public final Sender l() {
        return this.f42885b;
    }

    @m8.g
    public String toString() {
        return "AttachmentWrapper(attachment=" + this.f42884a + ", sender=" + this.f42885b + ", sendTime=" + this.f42886c + ", chatId=" + this.f42887d + ", content=" + this.f42888e + ')';
    }
}
