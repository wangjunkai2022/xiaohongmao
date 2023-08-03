.class Lcom/google/common/reflect/TypeToken$i$e;
.super Lcom/google/common/reflect/TypeToken$i;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/TypeToken$i<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/common/reflect/TypeToken$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/TypeToken$i<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken$i<",
            "TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken$i;-><init>(Lcom/google/common/reflect/TypeToken$a;)V

    .line 2
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$i$e;->c:Lcom/google/common/reflect/TypeToken$i;

    return-void
.end method


# virtual methods
.method e(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable<",
            "+TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$i$e;->c:Lcom/google/common/reflect/TypeToken$i;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$i;->e(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method f(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$i$e;->c:Lcom/google/common/reflect/TypeToken$i;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$i;->f(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$i$e;->c:Lcom/google/common/reflect/TypeToken$i;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$i;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
