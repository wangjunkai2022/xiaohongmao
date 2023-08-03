package com.qennnsad.aknkaksd.domain.base;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.Gson;
import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.util.AES;
import com.qennnsad.aknkaksd.util.JwtUtil;
import com.qennnsad.aknkaksd.util.o0;
import io.sentry.protocol.j;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ResponseDecoder.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0012\b\u0000\u0010\u0003*\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0006\u001a\u0004\u0018\u00018\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\b\u001a\u0004\u0018\u00018\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u0007J\u0019\u0010\t\u001a\u0004\u0018\u00018\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\u0007J\u0019\u0010\n\u001a\u0004\u0018\u00018\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\u0007R\u0017\u0010\u000f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\n\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/b;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", ExifInterface.LONGITUDE_EAST, "", j.f83728f, "c", "(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "d", "b", "a", "Ljava/lang/reflect/Type;", "Ljava/lang/reflect/Type;", "e", "()Ljava/lang/reflect/Type;", "type", "Lg5/a;", "localDataManager", "<init>", "(Ljava/lang/reflect/Type;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b<E extends BaseResponse<? extends Object>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Type f47930a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f47931b;

    public b(@m8.g Type type, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f47930a = type;
        this.f47931b = localDataManager;
    }

    @m8.h
    public final E a(@m8.h String str) {
        String str2;
        try {
            o0.g("ResponseDecoder", "decode-cola:--jsontype: " + this.f47930a + ' ' + str);
            Gson gson = new Gson();
            if (str != null) {
                int length = str.length() - 1;
                int i4 = 0;
                boolean z9 = false;
                while (i4 <= length) {
                    boolean z10 = Intrinsics.compare((int) str.charAt(!z9 ? i4 : length), 32) <= 0;
                    if (z9) {
                        if (!z10) {
                            break;
                        }
                        length--;
                    } else if (z10) {
                        i4++;
                    } else {
                        z9 = true;
                    }
                }
                str2 = str.subSequence(i4, length + 1).toString();
            } else {
                str2 = null;
            }
            o0.g("ResponseDecoder", "decode-cola:" + str2);
            return (E) gson.fromJson(str2, this.f47930a);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @m8.h
    public final E b(@m8.h String str) {
        try {
            String o9 = this.f47931b.o();
            String a10 = o9 != null ? JwtUtil.Companion.a(o9) : null;
            o0.g("ResponseDecoder", "decode: jsontype:" + this.f47930a + ", key:" + a10 + ", encoded:" + str);
            Gson gson = new Gson();
            String aesdecrypt = AES.aesdecrypt(str, a10);
            Intrinsics.checkNotNullExpressionValue(aesdecrypt, "aesdecrypt(response, key)");
            int length = aesdecrypt.length() - 1;
            int i4 = 0;
            boolean z9 = false;
            while (i4 <= length) {
                boolean z10 = Intrinsics.compare((int) aesdecrypt.charAt(!z9 ? i4 : length), 32) <= 0;
                if (z9) {
                    if (!z10) {
                        break;
                    }
                    length--;
                } else if (z10) {
                    i4++;
                } else {
                    z9 = true;
                }
            }
            String obj = aesdecrypt.subSequence(i4, length + 1).toString();
            o0.g("ResponseDecoder", "decoded panda: " + obj);
            return (E) gson.fromJson(obj, this.f47930a);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @m8.h
    public final E c(@m8.h String str) {
        try {
            o0.g("ResponseDecoder", "decode:--jsontype:" + this.f47930a + " encoded: " + str);
            Gson gson = new Gson();
            String aesdecrypt_tiger = AES.aesdecrypt_tiger(str);
            Intrinsics.checkNotNullExpressionValue(aesdecrypt_tiger, "aesdecrypt_tiger(response)");
            int length = aesdecrypt_tiger.length() - 1;
            int i4 = 0;
            boolean z9 = false;
            while (i4 <= length) {
                boolean z10 = Intrinsics.compare((int) aesdecrypt_tiger.charAt(!z9 ? i4 : length), 32) <= 0;
                if (z9) {
                    if (!z10) {
                        break;
                    }
                    length--;
                } else if (z10) {
                    i4++;
                } else {
                    z9 = true;
                }
            }
            String obj = aesdecrypt_tiger.subSequence(i4, length + 1).toString();
            o0.g("ResponseDecoder", "decoded with tiger:" + obj);
            return (E) gson.fromJson(obj, this.f47930a);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @m8.h
    public final E d(@m8.h String str) {
        try {
            o0.g("ResponseDecoder", "decode:--jsontype:" + this.f47930a + ", encoded:" + str);
            Gson gson = new Gson();
            String aesdecrypt_tiger2 = AES.aesdecrypt_tiger2(str);
            Intrinsics.checkNotNullExpressionValue(aesdecrypt_tiger2, "aesdecrypt_tiger2(response)");
            int length = aesdecrypt_tiger2.length() - 1;
            int i4 = 0;
            boolean z9 = false;
            while (i4 <= length) {
                boolean z10 = Intrinsics.compare((int) aesdecrypt_tiger2.charAt(!z9 ? i4 : length), 32) <= 0;
                if (z9) {
                    if (!z10) {
                        break;
                    }
                    length--;
                } else if (z10) {
                    i4++;
                } else {
                    z9 = true;
                }
            }
            String obj = aesdecrypt_tiger2.subSequence(i4, length + 1).toString();
            o0.g("ResponseDecoder", "decoded with tiger2: " + obj);
            return (E) gson.fromJson(obj, this.f47930a);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @m8.g
    public final Type e() {
        return this.f47930a;
    }
}
