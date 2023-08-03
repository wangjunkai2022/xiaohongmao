.class Lcom/google/common/reflect/TypeToken$g$a;
.super Ljava/lang/Object;
.source "TypeToken.java"

# interfaces
.implements Lcom/google/common/base/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken$g;->rawTypes()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b0<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/reflect/TypeToken$g;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken$g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$g$a;->a:Lcom/google/common/reflect/TypeToken$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$g$a;->a(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
