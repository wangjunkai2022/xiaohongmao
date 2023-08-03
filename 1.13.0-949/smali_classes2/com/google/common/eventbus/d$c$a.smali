.class final Lcom/google/common/eventbus/d$c$a;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/common/eventbus/g;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/common/eventbus/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/eventbus/d$c$a;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/common/eventbus/d$c$a;->b:Lcom/google/common/eventbus/g;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/common/eventbus/g;Lcom/google/common/eventbus/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/eventbus/d$c$a;-><init>(Ljava/lang/Object;Lcom/google/common/eventbus/g;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/eventbus/d$c$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/eventbus/d$c$a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/eventbus/d$c$a;)Lcom/google/common/eventbus/g;
    .locals 0

    iget-object p0, p0, Lcom/google/common/eventbus/d$c$a;->b:Lcom/google/common/eventbus/g;

    return-object p0
.end method
