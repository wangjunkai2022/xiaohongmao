.class final Lcom/google/common/reflect/b$a;
.super Ljava/lang/Object;
.source "ClassPath.java"

# interfaces
.implements Lcom/google/common/base/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b0<",
        "Lcom/google/common/reflect/b$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/reflect/b$b;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/common/reflect/b$b;->f(Lcom/google/common/reflect/b$b;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/common/reflect/b$b;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/b$a;->a(Lcom/google/common/reflect/b$b;)Z

    move-result p1

    return p1
.end method
