.class final synthetic Lcom/google/firebase/components/u;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/Map$Entry;

.field private final b:Ln3/a;


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;Ln3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/u;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/firebase/components/u;->b:Ln3/a;

    return-void
.end method

.method public static a(Ljava/util/Map$Entry;Ln3/a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/u;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/u;-><init>(Ljava/util/Map$Entry;Ln3/a;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/u;->a:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/firebase/components/u;->b:Ln3/a;

    invoke-static {v0, v1}, Lcom/google/firebase/components/v;->g(Ljava/util/Map$Entry;Ln3/a;)V

    return-void
.end method
