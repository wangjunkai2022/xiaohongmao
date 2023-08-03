package com.jakewharton.rxbinding4.widget;

import android.widget.SearchView;
import androidx.annotation.CheckResult;
import kotlin.Metadata;

/* compiled from: SearchViewQueryConsumer.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0002\u001a\u001c\u0010\u0005\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00040\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¨\u0006\u0006"}, d2 = {"Landroid/widget/SearchView;", "", "submit", "Lq7/g;", "", "a", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/widget/RxSearchView")
/* loaded from: classes3.dex */
final /* synthetic */ class v0 {

    /* compiled from: SearchViewQueryConsumer.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "kotlin.jvm.PlatformType", "text", "", "a", "(Ljava/lang/CharSequence;)V"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    static final class a<T> implements q7.g<CharSequence> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchView f44056a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f44057b;

        a(SearchView searchView, boolean z9) {
            this.f44056a = searchView;
            this.f44057b = z9;
        }

        @Override // q7.g
        /* renamed from: a */
        public final void accept(CharSequence charSequence) {
            this.f44056a.setQuery(charSequence, this.f44057b);
        }
    }

    @CheckResult
    @m8.g
    public static final q7.g<? super CharSequence> a(@m8.g SearchView searchView, boolean z9) {
        return new a(searchView, z9);
    }
}
