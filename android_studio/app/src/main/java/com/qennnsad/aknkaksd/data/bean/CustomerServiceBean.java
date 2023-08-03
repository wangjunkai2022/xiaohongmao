package com.qennnsad.aknkaksd.data.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ConfigBean.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0010"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/CustomerServiceBean;", "", "contactUrl", "", "(Ljava/lang/String;)V", "getContactUrl", "()Ljava/lang/String;", "setContactUrl", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CustomerServiceBean {
    @h
    private String contactUrl;

    public CustomerServiceBean(@h String str) {
        this.contactUrl = str;
    }

    public static /* synthetic */ CustomerServiceBean copy$default(CustomerServiceBean customerServiceBean, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = customerServiceBean.contactUrl;
        }
        return customerServiceBean.copy(str);
    }

    @h
    public final String component1() {
        return this.contactUrl;
    }

    @g
    public final CustomerServiceBean copy(@h String str) {
        return new CustomerServiceBean(str);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CustomerServiceBean) && Intrinsics.areEqual(this.contactUrl, ((CustomerServiceBean) obj).contactUrl);
    }

    @h
    public final String getContactUrl() {
        return this.contactUrl;
    }

    public int hashCode() {
        String str = this.contactUrl;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final void setContactUrl(@h String str) {
        this.contactUrl = str;
    }

    @g
    public String toString() {
        return "CustomerServiceBean(contactUrl=" + this.contactUrl + ')';
    }
}
