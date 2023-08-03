.class public Ly2/k;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"

# interfaces
.implements Ly2/g;


# annotations
.annotation build Lu2/a;
.end annotation


# static fields
.field private static final a:Ly2/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2/k;

    invoke-direct {v0}, Ly2/k;-><init>()V

    sput-object v0, Ly2/k;->a:Ly2/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Ly2/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    sget-object v0, Ly2/k;->a:Ly2/k;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
