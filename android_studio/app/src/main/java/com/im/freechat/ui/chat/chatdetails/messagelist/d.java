package com.im.freechat.ui.chat.chatdetails.messagelist;

import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.message.Message;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatDetailsAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\"\u0010#J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\n\u001a\u00020\u0004HÆ\u0003JH\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0013\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0014HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001b\u001a\u0004\b\u001e\u0010\u001dR\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u001f\u001a\u0004\b \u0010\tR\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\n\u0010\u001b\u001a\u0004\b!\u0010\u001d¨\u0006$"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "", "Lcom/im/freechat/shared/entities/message/Message;", "a", "", "b", "c", "", "d", "()[Ljava/lang/Boolean;", "e", "message", "selected", "isNextMessageSenderSame", "childSelection", "isMediaGroupChild", "f", "(Lcom/im/freechat/shared/entities/message/Message;ZZ[Ljava/lang/Boolean;Z)Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "", "toString", "", "hashCode", "other", "equals", "Lcom/im/freechat/shared/entities/message/Message;", ContextChain.TAG_INFRA, "()Lcom/im/freechat/shared/entities/message/Message;", "Z", "j", "()Z", "l", "[Ljava/lang/Boolean;", "h", "k", "<init>", "(Lcom/im/freechat/shared/entities/message/Message;ZZ[Ljava/lang/Boolean;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Message f42639a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f42640b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f42641c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final Boolean[] f42642d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f42643e;

    public d(@g Message message, boolean z9, boolean z10, @g Boolean[] childSelection, boolean z11) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(childSelection, "childSelection");
        this.f42639a = message;
        this.f42640b = z9;
        this.f42641c = z10;
        this.f42642d = childSelection;
        this.f42643e = z11;
    }

    public static /* synthetic */ d g(d dVar, Message message, boolean z9, boolean z10, Boolean[] boolArr, boolean z11, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            message = dVar.f42639a;
        }
        if ((i4 & 2) != 0) {
            z9 = dVar.f42640b;
        }
        boolean z12 = z9;
        if ((i4 & 4) != 0) {
            z10 = dVar.f42641c;
        }
        boolean z13 = z10;
        if ((i4 & 8) != 0) {
            boolArr = dVar.f42642d;
        }
        Boolean[] boolArr2 = boolArr;
        if ((i4 & 16) != 0) {
            z11 = dVar.f42643e;
        }
        return dVar.f(message, z12, z13, boolArr2, z11);
    }

    @g
    public final Message a() {
        return this.f42639a;
    }

    public final boolean b() {
        return this.f42640b;
    }

    public final boolean c() {
        return this.f42641c;
    }

    @g
    public final Boolean[] d() {
        return this.f42642d;
    }

    public final boolean e() {
        return this.f42643e;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            return Intrinsics.areEqual(this.f42639a, dVar.f42639a) && this.f42640b == dVar.f42640b && this.f42641c == dVar.f42641c && Intrinsics.areEqual(this.f42642d, dVar.f42642d) && this.f42643e == dVar.f42643e;
        }
        return false;
    }

    @g
    public final d f(@g Message message, boolean z9, boolean z10, @g Boolean[] childSelection, boolean z11) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(childSelection, "childSelection");
        return new d(message, z9, z10, childSelection, z11);
    }

    @g
    public final Boolean[] h() {
        return this.f42642d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.f42639a.hashCode() * 31;
        boolean z9 = this.f42640b;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        int i10 = (hashCode + i4) * 31;
        boolean z10 = this.f42641c;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        int hashCode2 = (((i10 + i11) * 31) + Arrays.hashCode(this.f42642d)) * 31;
        boolean z11 = this.f42643e;
        return hashCode2 + (z11 ? 1 : z11 ? 1 : 0);
    }

    @g
    public final Message i() {
        return this.f42639a;
    }

    public final boolean j() {
        return this.f42640b;
    }

    public final boolean k() {
        return this.f42643e;
    }

    public final boolean l() {
        return this.f42641c;
    }

    @g
    public String toString() {
        return "MessageWrapper(message=" + this.f42639a + ", selected=" + this.f42640b + ", isNextMessageSenderSame=" + this.f42641c + ", childSelection=" + Arrays.toString(this.f42642d) + ", isMediaGroupChild=" + this.f42643e + ')';
    }

    public /* synthetic */ d(Message message, boolean z9, boolean z10, Boolean[] boolArr, boolean z11, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(message, z9, z10, (i4 & 8) != 0 ? new Boolean[0] : boolArr, (i4 & 16) != 0 ? false : z11);
    }
}
