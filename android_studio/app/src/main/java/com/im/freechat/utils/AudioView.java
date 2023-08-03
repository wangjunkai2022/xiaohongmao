package com.im.freechat.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.Session;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.random.Random;
import kotlin.random.RandomKt;
import kotlin.ranges.IntRange;

/* compiled from: AudioView.kt */
@Metadata(bv = {}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010*\u001a\u00020)\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010+\u0012\b\b\u0002\u0010-\u001a\u00020\u0002¢\u0006\u0004\b.\u0010/J\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007J\u0012\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016R.\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R*\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u00060"}, d2 = {"Lcom/im/freechat/utils/AudioView;", "Landroid/view/View;", "", "t", "duration", "", "a", "", "pos", "setCurPos", "Landroid/graphics/Canvas;", "canvas", "onDraw", "Landroid/view/MotionEvent;", "event", "", "onTouchEvent", "Lkotlin/Function1;", "Lkotlin/jvm/functions/Function1;", "getOnSeek", "()Lkotlin/jvm/functions/Function1;", "setOnSeek", "(Lkotlin/jvm/functions/Function1;)V", "onSeek", "", "b", "[Ljava/lang/Integer;", "getArray", "()[Ljava/lang/Integer;", "setArray", "([Ljava/lang/Integer;)V", "array", "Landroid/graphics/Paint;", "c", "Landroid/graphics/Paint;", "paint", "d", "F", "curPercent", "e", "I", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class AudioView extends View {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private Function1<? super Integer, Unit> f43722a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Integer[] f43723b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Paint f43724c;

    /* renamed from: d  reason: collision with root package name */
    private float f43725d;

    /* renamed from: e  reason: collision with root package name */
    private int f43726e;

    /* compiled from: AudioView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", ContextChain.TAG_INFRA, "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function1<Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f43727a = new a();

        a() {
            super(1);
        }

        public final void a(int i4) {
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AudioView(@m8.g Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AudioView(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ AudioView(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    public final void a(int i4, int i10) {
        int i11;
        int collectionSizeOrDefault;
        invalidate();
        Random Random = RandomKt.Random(i4);
        this.f43726e = i10;
        i11 = com.im.freechat.utils.a.f43739a;
        IntRange intRange = new IntRange(1, i11);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it = intRange.iterator();
        int i12 = 1;
        while (it.hasNext()) {
            ((IntIterator) it).nextInt();
            int nextInt = Random.nextInt(10) + 1;
            if (nextInt - i12 > 2) {
                nextInt = i12 + 2;
            }
            i12 = nextInt - i12 < -2 ? i12 - 2 : nextInt;
            arrayList.add(Integer.valueOf(i12));
        }
        Object[] array = arrayList.toArray(new Integer[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        this.f43723b = (Integer[]) array;
    }

    @m8.h
    public final Integer[] getArray() {
        return this.f43723b;
    }

    @m8.g
    public final Function1<Integer, Unit> getOnSeek() {
        return this.f43722a;
    }

    @Override // android.view.View
    protected void onDraw(@m8.h Canvas canvas) {
        int i4;
        int i10;
        Integer[] numArr;
        i4 = com.im.freechat.utils.a.f43739a;
        Iterator<Integer> it = new IntRange(1, i4).iterator();
        while (it.hasNext()) {
            int nextInt = ((IntIterator) it).nextInt();
            Paint paint = this.f43724c;
            float f10 = nextInt;
            float f11 = this.f43725d;
            i10 = com.im.freechat.utils.a.f43739a;
            paint.setAlpha(f10 < f11 * ((float) i10) ? 150 : 50);
            float intValue = this.f43723b != null ? numArr[nextInt - 1].intValue() * com.im.freechat.utils.a.c(2) : com.im.freechat.utils.a.c(1);
            if (canvas != null) {
                canvas.drawRect(com.im.freechat.utils.a.b(0.5f) + (com.im.freechat.utils.a.c(2) * f10), getHeight(), com.im.freechat.utils.a.b(1.5f) + (f10 * com.im.freechat.utils.a.c(2)), getHeight() - intValue, this.f43724c);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(@m8.g MotionEvent event) {
        int roundToInt;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getActionMasked() == 0) {
            float x9 = event.getX() / getWidth();
            Function1<? super Integer, Unit> function1 = this.f43722a;
            roundToInt = MathKt__MathJVMKt.roundToInt(x9 * this.f43726e * 1000);
            function1.invoke(Integer.valueOf(roundToInt));
            return true;
        }
        return false;
    }

    public final void setArray(@m8.h Integer[] numArr) {
        this.f43723b = numArr;
    }

    public final void setCurPos(float f10) {
        this.f43725d = f10;
        invalidate();
    }

    public final void setOnSeek(@m8.g Function1<? super Integer, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f43722a = function1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AudioView(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f43722a = a.f43727a;
        Paint paint = new Paint();
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f43724c = paint;
        this.f43725d = 0.5f;
    }
}
