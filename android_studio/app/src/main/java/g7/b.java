package g7;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import f7.b;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: FilterViewHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lg7/b;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "itemView", "<init>", "(Landroid/view/View;)V", "lib-ananas_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends RecyclerView.ViewHolder {
    @JvmField
    @g

    /* renamed from: a  reason: collision with root package name */
    public ImageView f67847a;
    @JvmField
    @g

    /* renamed from: b  reason: collision with root package name */
    public TextView f67848b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@g View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        View findViewById = itemView.findViewById(b.i.f66799g3);
        Intrinsics.checkNotNull(findViewById, "null cannot be cast to non-null type android.widget.ImageView");
        this.f67847a = (ImageView) findViewById;
        View findViewById2 = itemView.findViewById(b.i.f66809h3);
        Intrinsics.checkNotNull(findViewById2, "null cannot be cast to non-null type android.widget.TextView");
        this.f67848b = (TextView) findViewById2;
    }
}
