.class public Lcom/facebook/drawee/components/DraweeEventTracker;
.super Ljava/lang/Object;
.source "DraweeEventTracker.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/components/DraweeEventTracker$Event;
    }
.end annotation


# static fields
.field private static final b:I = 0x14

.field private static final c:Lcom/facebook/drawee/components/DraweeEventTracker;

.field private static d:Z


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/facebook/drawee/components/DraweeEventTracker$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    invoke-direct {v0}, Lcom/facebook/drawee/components/DraweeEventTracker;-><init>()V

    sput-object v0, Lcom/facebook/drawee/components/DraweeEventTracker;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/facebook/drawee/components/DraweeEventTracker;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/components/DraweeEventTracker;->a:Ljava/util/Queue;

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/drawee/components/DraweeEventTracker;->d:Z

    return-void
.end method

.method public static b()Lcom/facebook/drawee/components/DraweeEventTracker;
    .locals 1

    sget-boolean v0, Lcom/facebook/drawee/components/DraweeEventTracker;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    invoke-direct {v0}, Lcom/facebook/drawee/components/DraweeEventTracker;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/facebook/drawee/components/DraweeEventTracker;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/components/DraweeEventTracker;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/components/DraweeEventTracker;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/components/DraweeEventTracker;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/components/DraweeEventTracker;->a:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
