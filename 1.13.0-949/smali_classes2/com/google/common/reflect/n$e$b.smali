.class final enum Lcom/google/common/reflect/n$e$b;
.super Lcom/google/common/reflect/n$e;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/n$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/n$e;-><init>(Ljava/lang/String;ILcom/google/common/reflect/n$a;)V

    return-void
.end method


# virtual methods
.method b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/common/reflect/n;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/reflect/n$d;

    invoke-direct {v0, p1}, Lcom/google/common/reflect/n$d;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1
.end method
