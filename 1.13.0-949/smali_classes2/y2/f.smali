.class public final synthetic Ly2/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# direct methods
.method public static a(Ly2/g;)J
    .locals 2
    .param p0    # Ly2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
