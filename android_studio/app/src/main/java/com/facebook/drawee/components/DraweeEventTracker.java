package com.facebook.drawee.components;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class DraweeEventTracker {

    /* renamed from: b  reason: collision with root package name */
    private static final int f11312b = 20;

    /* renamed from: c  reason: collision with root package name */
    private static final DraweeEventTracker f11313c = new DraweeEventTracker();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f11314d = true;

    /* renamed from: a  reason: collision with root package name */
    private final Queue<Event> f11315a = new ArrayBlockingQueue(20);

    /* loaded from: classes.dex */
    public enum Event {
        ON_SET_HIERARCHY,
        ON_CLEAR_HIERARCHY,
        ON_SET_CONTROLLER,
        ON_CLEAR_OLD_CONTROLLER,
        ON_CLEAR_CONTROLLER,
        ON_INIT_CONTROLLER,
        ON_ATTACH_CONTROLLER,
        ON_DETACH_CONTROLLER,
        ON_RELEASE_CONTROLLER,
        ON_DATASOURCE_SUBMIT,
        ON_DATASOURCE_RESULT,
        ON_DATASOURCE_RESULT_INT,
        ON_DATASOURCE_FAILURE,
        ON_DATASOURCE_FAILURE_INT,
        ON_HOLDER_ATTACH,
        ON_HOLDER_DETACH,
        ON_DRAWABLE_SHOW,
        ON_DRAWABLE_HIDE,
        ON_ACTIVITY_START,
        ON_ACTIVITY_STOP,
        ON_RUN_CLEAR_CONTROLLER,
        ON_SCHEDULE_CLEAR_CONTROLLER,
        ON_SAME_CONTROLLER_SKIPPED,
        ON_SUBMIT_CACHE_HIT
    }

    private DraweeEventTracker() {
    }

    public static void a() {
        f11314d = false;
    }

    public static DraweeEventTracker b() {
        return f11314d ? new DraweeEventTracker() : f11313c;
    }

    public void c(Event event) {
        if (f11314d) {
            if (this.f11315a.size() + 1 > 20) {
                this.f11315a.poll();
            }
            this.f11315a.add(event);
        }
    }

    public String toString() {
        return this.f11315a.toString();
    }
}
