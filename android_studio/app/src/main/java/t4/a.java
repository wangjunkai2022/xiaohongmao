package t4;

import com.facebook.common.callercontext.ContextChain;
import com.opensource.svgaplayer.proto.AudioEntity;
import kotlin.Metadata;
import m8.h;

/* compiled from: SVGAAudioEntity.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000bR\u0017\u0010\u000e\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\u000f\u0010\u000bR\u0017\u0010\u0010\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u0011\u0010\u000bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017¨\u0006\u001f"}, d2 = {"Lt4/a;", "", "", "audioKey", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "", "startFrame", "I", "e", "()I", "endFrame", "b", "startTime", "f", "totalTime", "g", "soundID", "Ljava/lang/Integer;", "d", "()Ljava/lang/Integer;", ContextChain.TAG_INFRA, "(Ljava/lang/Integer;)V", "playID", "c", "h", "Lcom/opensource/svgaplayer/proto/AudioEntity;", "audioItem", "<init>", "(Lcom/opensource/svgaplayer/proto/AudioEntity;)V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class a {
    @h

    /* renamed from: a  reason: collision with root package name */
    private final String f93834a;

    /* renamed from: b  reason: collision with root package name */
    private final int f93835b;

    /* renamed from: c  reason: collision with root package name */
    private final int f93836c;

    /* renamed from: d  reason: collision with root package name */
    private final int f93837d;

    /* renamed from: e  reason: collision with root package name */
    private final int f93838e;
    @h

    /* renamed from: f  reason: collision with root package name */
    private Integer f93839f;
    @h

    /* renamed from: g  reason: collision with root package name */
    private Integer f93840g;

    public a(@m8.g AudioEntity audioEntity) {
        this.f93834a = audioEntity.audioKey;
        Integer num = audioEntity.startFrame;
        this.f93835b = num != null ? num.intValue() : 0;
        Integer num2 = audioEntity.endFrame;
        this.f93836c = num2 != null ? num2.intValue() : 0;
        Integer num3 = audioEntity.startTime;
        this.f93837d = num3 != null ? num3.intValue() : 0;
        Integer num4 = audioEntity.totalTime;
        this.f93838e = num4 != null ? num4.intValue() : 0;
    }

    @h
    public final String a() {
        return this.f93834a;
    }

    public final int b() {
        return this.f93836c;
    }

    @h
    public final Integer c() {
        return this.f93840g;
    }

    @h
    public final Integer d() {
        return this.f93839f;
    }

    public final int e() {
        return this.f93835b;
    }

    public final int f() {
        return this.f93837d;
    }

    public final int g() {
        return this.f93838e;
    }

    public final void h(@h Integer num) {
        this.f93840g = num;
    }

    public final void i(@h Integer num) {
        this.f93839f = num;
    }
}
