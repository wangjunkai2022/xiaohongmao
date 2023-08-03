.class final synthetic Lcom/google/firebase/components/l;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Lo3/b;


# instance fields
.field private final a:Lcom/google/firebase/components/q;

.field private final b:Lcom/google/firebase/components/f;


# direct methods
.method private constructor <init>(Lcom/google/firebase/components/q;Lcom/google/firebase/components/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/l;->a:Lcom/google/firebase/components/q;

    iput-object p2, p0, Lcom/google/firebase/components/l;->b:Lcom/google/firebase/components/f;

    return-void
.end method

.method public static a(Lcom/google/firebase/components/q;Lcom/google/firebase/components/f;)Lo3/b;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/l;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/l;-><init>(Lcom/google/firebase/components/q;Lcom/google/firebase/components/f;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/l;->a:Lcom/google/firebase/components/q;

    iget-object v1, p0, Lcom/google/firebase/components/l;->b:Lcom/google/firebase/components/f;

    invoke-static {v0, v1}, Lcom/google/firebase/components/q;->l(Lcom/google/firebase/components/q;Lcom/google/firebase/components/f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
