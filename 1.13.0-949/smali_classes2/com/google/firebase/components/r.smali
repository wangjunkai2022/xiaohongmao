.class final synthetic Lcom/google/firebase/components/r;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Lo3/b;


# instance fields
.field private final a:Lcom/google/firebase/components/k;


# direct methods
.method private constructor <init>(Lcom/google/firebase/components/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/r;->a:Lcom/google/firebase/components/k;

    return-void
.end method

.method public static a(Lcom/google/firebase/components/k;)Lo3/b;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/r;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/r;-><init>(Lcom/google/firebase/components/k;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/r;->a:Lcom/google/firebase/components/k;

    invoke-static {v0}, Lcom/google/firebase/components/q$b;->e(Lcom/google/firebase/components/k;)Lcom/google/firebase/components/k;

    move-result-object v0

    return-object v0
.end method
