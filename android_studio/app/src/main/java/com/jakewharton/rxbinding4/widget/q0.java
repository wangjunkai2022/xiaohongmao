package com.jakewharton.rxbinding4.widget;

import android.widget.RadioGroup;
import androidx.annotation.CheckResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RadioGroupToggleCheckedConsumer.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u0014\u0010\u0003\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007¨\u0006\u0004"}, d2 = {"Landroid/widget/RadioGroup;", "Lq7/g;", "", "a", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/widget/RxRadioGroup")
/* loaded from: classes3.dex */
final /* synthetic */ class q0 {

    /* compiled from: RadioGroupToggleCheckedConsumer.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "kotlin.jvm.PlatformType", "value", "", "a", "(Ljava/lang/Integer;)V"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    static final class a<T> implements q7.g<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RadioGroup f44027a;

        a(RadioGroup radioGroup) {
            this.f44027a = radioGroup;
        }

        @Override // q7.g
        /* renamed from: a */
        public final void accept(Integer num) {
            if (num != null && num.intValue() == -1) {
                this.f44027a.clearCheck();
                return;
            }
            RadioGroup radioGroup = this.f44027a;
            if (num == null) {
                Intrinsics.throwNpe();
            }
            radioGroup.check(num.intValue());
        }
    }

    @CheckResult
    @m8.g
    public static final q7.g<? super Integer> a(@m8.g RadioGroup radioGroup) {
        return new a(radioGroup);
    }
}
