package com.qennnsad.aknkaksd.data.bean;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.util.o0;
import java.lang.reflect.Field;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MysterableBean.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J#\u0010\t\u001a\u0004\u0018\u00010\b2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0002¢\u0006\u0002\u0010\fJ\u0006\u0010\r\u001a\u00020\u0006J\n\u0010\u000e\u001a\u0004\u0018\u00010\bH\u0016J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00068\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;", "Lcom/qennnsad/aknkaksd/data/bean/Mysterable;", "()V", "TAG", "", "mystery", "", "mysteryUid", "", "findField", "names", "", "([Ljava/lang/String;)Ljava/lang/Object;", "getIsMystery", "getMysteryUid", "isMystery", "", "setIsMystery", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class MysterableBean implements Mysterable {
    @g
    private final transient String TAG = "MysterableBean->" + getClass().getSimpleName();
    @SerializedName("is_mystery")
    private int mystery;
    @h
    private transient Object mysteryUid;

    private final Object findField(String... strArr) {
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Find mystery user id among ");
        String arrays = Arrays.toString(strArr);
        Intrinsics.checkNotNullExpressionValue(arrays, "toString(this)");
        sb.append(arrays);
        o0.a(str, sb.toString());
        if (strArr.length == 0) {
            return null;
        }
        try {
            String str2 = strArr[0];
            String str3 = this.TAG;
            o0.a(str3, "Processing: " + str2);
            Field declaredField = getClass().getDeclaredField(str2);
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            String str4 = this.TAG;
            o0.a(str4, "Found: " + str2 + '=' + obj);
            if (obj != null) {
                return obj;
            }
            throw new NoSuchFieldException();
        } catch (IllegalAccessException unused) {
            String[] strArr2 = (String[]) ArraysKt.copyOfRange(strArr, 1, strArr.length);
            return findField((String[]) Arrays.copyOf(strArr2, strArr2.length));
        } catch (NoSuchFieldException unused2) {
            String[] strArr3 = (String[]) ArraysKt.copyOfRange(strArr, 1, strArr.length);
            return findField((String[]) Arrays.copyOf(strArr3, strArr3.length));
        }
    }

    public final int getIsMystery() {
        return this.mystery;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.Mysterable
    @h
    public Object getMysteryUid() {
        if (this.mysteryUid == null) {
            this.mysteryUid = findField("id", "userid", "userId", "user_id");
        }
        return this.mysteryUid;
    }

    public final boolean isMystery() {
        return this.mystery == 1;
    }

    public final void setIsMystery(int i4) {
        this.mystery = i4;
    }
}
