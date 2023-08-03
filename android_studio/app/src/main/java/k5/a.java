package k5;

import android.content.Context;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.item.ItemTypeAttrs;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ItemTypeAttrs.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¨\u0006\u0005"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;", "Landroid/content/Context;", "context", "", "a", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @g
    public static final String a(@g ItemTypeAttrs itemTypeAttrs, @g Context context) {
        Intrinsics.checkNotNullParameter(itemTypeAttrs, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        String string = context.getString(itemTypeAttrs.getColorTitleResId());
        Intrinsics.checkNotNullExpressionValue(string, "context.getString(colorTitleResId)");
        String string2 = context.getString(itemTypeAttrs.getDurationMin() < 60 ? R.string.pinned_duration_history_mins : R.string.pinned_duration_history_hours);
        Intrinsics.checkNotNullExpressionValue(string2, "if(durationMin < 60) con…d_duration_history_hours)");
        Object valueOf = itemTypeAttrs.getDurationMin() < 60 ? Integer.valueOf(itemTypeAttrs.getDurationMin()) : Long.valueOf(TimeUnit.MINUTES.toHours(itemTypeAttrs.getDurationMin()));
        return itemTypeAttrs.getPrice() + string + valueOf + string2;
    }
}
