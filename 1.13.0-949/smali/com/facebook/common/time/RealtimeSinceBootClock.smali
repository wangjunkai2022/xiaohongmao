.class public Lcom/facebook/common/time/RealtimeSinceBootClock;
.super Ljava/lang/Object;
.source "RealtimeSinceBootClock.java"

# interfaces
.implements Ls0/c;


# annotations
.annotation build Lcom/facebook/common/internal/e;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final a:Lcom/facebook/common/time/RealtimeSinceBootClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/common/time/RealtimeSinceBootClock;

    invoke-direct {v0}, Lcom/facebook/common/time/RealtimeSinceBootClock;-><init>()V

    sput-object v0, Lcom/facebook/common/time/RealtimeSinceBootClock;->a:Lcom/facebook/common/time/RealtimeSinceBootClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/facebook/common/time/RealtimeSinceBootClock;
    .locals 1
    .annotation build Lcom/facebook/common/internal/e;
    .end annotation

    sget-object v0, Lcom/facebook/common/time/RealtimeSinceBootClock;->a:Lcom/facebook/common/time/RealtimeSinceBootClock;

    return-object v0
.end method


# virtual methods
.method public now()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
