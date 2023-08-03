package com.qennnsad.aknkaksd.data.bean;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatCreateResponseBean.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/ChatCreateResponseBean;", "", "id", "", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatCreateResponseBean {
    @SerializedName("conv_id")
    @g
    private final String id;

    public ChatCreateResponseBean(@g String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = id;
    }

    public static /* synthetic */ ChatCreateResponseBean copy$default(ChatCreateResponseBean chatCreateResponseBean, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = chatCreateResponseBean.id;
        }
        return chatCreateResponseBean.copy(str);
    }

    @g
    public final String component1() {
        return this.id;
    }

    @g
    public final ChatCreateResponseBean copy(@g String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new ChatCreateResponseBean(id);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChatCreateResponseBean) && Intrinsics.areEqual(this.id, ((ChatCreateResponseBean) obj).id);
    }

    @g
    public final String getId() {
        return this.id;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    @g
    public String toString() {
        return "ChatCreateResponseBean(id=" + this.id + ')';
    }
}
