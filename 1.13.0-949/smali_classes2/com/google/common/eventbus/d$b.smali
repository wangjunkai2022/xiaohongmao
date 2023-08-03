.class final Lcom/google/common/eventbus/d$b;
.super Lcom/google/common/eventbus/d;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/google/common/eventbus/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/eventbus/d$b;

    invoke-direct {v0}, Lcom/google/common/eventbus/d$b;-><init>()V

    sput-object v0, Lcom/google/common/eventbus/d$b;->a:Lcom/google/common/eventbus/d$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/eventbus/d;-><init>()V

    return-void
.end method

.method static synthetic e()Lcom/google/common/eventbus/d$b;
    .locals 1

    sget-object v0, Lcom/google/common/eventbus/d$b;->a:Lcom/google/common/eventbus/d$b;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lcom/google/common/eventbus/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/g;

    invoke-virtual {v0, p1}, Lcom/google/common/eventbus/g;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
