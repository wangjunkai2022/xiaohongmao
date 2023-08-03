package io.sentry.android.core.internal.gestures;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.internal.gestures.UiElement;
import io.sentry.util.l;
import java.util.LinkedList;
import m8.a;

/* compiled from: ViewUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class j {
    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    public static UiElement a(@m8.g SentryAndroidOptions sentryAndroidOptions, @m8.g View view, float f10, float f11, UiElement.Type type) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(view);
        UiElement uiElement = null;
        while (linkedList.size() > 0) {
            View view2 = (View) l.c((View) linkedList.poll(), "view is required");
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                    linkedList.add(viewGroup.getChildAt(i4));
                }
            }
            for (io.sentry.internal.gestures.a aVar : sentryAndroidOptions.getGestureTargetLocators()) {
                UiElement a10 = aVar.a(view2, f10, f11, type);
                if (a10 != null) {
                    if (type != UiElement.Type.CLICKABLE) {
                        return a10;
                    }
                    uiElement = a10;
                }
            }
        }
        return uiElement;
    }

    public static String b(@m8.g View view) throws Resources.NotFoundException {
        int id = view.getId();
        if (id != -1 && !d(id)) {
            Resources resources = view.getContext().getResources();
            return resources != null ? resources.getResourceEntryName(id) : "";
        }
        throw new Resources.NotFoundException();
    }

    static String c(@m8.g View view) {
        int id = view.getId();
        try {
            return b(view);
        } catch (Resources.NotFoundException unused) {
            return "0x" + Integer.toString(id, 16);
        }
    }

    private static boolean d(int i4) {
        return ((-16777216) & i4) == 0 && (i4 & 16777215) != 0;
    }
}
