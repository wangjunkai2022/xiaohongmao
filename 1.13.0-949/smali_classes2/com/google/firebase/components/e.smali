.class final synthetic Lcom/google/firebase/components/e;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Lcom/google/firebase/components/j;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/firebase/components/j;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/e;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/e;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/firebase/components/f;->m(Ljava/lang/Object;Lcom/google/firebase/components/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
