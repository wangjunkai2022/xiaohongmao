.class final synthetic Lcom/google/firebase/components/o;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/components/x;

.field private final b:Lo3/b;


# direct methods
.method private constructor <init>(Lcom/google/firebase/components/x;Lo3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/o;->a:Lcom/google/firebase/components/x;

    iput-object p2, p0, Lcom/google/firebase/components/o;->b:Lo3/b;

    return-void
.end method

.method public static a(Lcom/google/firebase/components/x;Lo3/b;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/o;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/o;-><init>(Lcom/google/firebase/components/x;Lo3/b;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/o;->a:Lcom/google/firebase/components/x;

    iget-object v1, p0, Lcom/google/firebase/components/o;->b:Lo3/b;

    invoke-static {v0, v1}, Lcom/google/firebase/components/q;->n(Lcom/google/firebase/components/x;Lo3/b;)V

    return-void
.end method
