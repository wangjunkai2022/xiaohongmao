.class Lcom/google/common/escape/f$a;
.super Ljava/lang/Object;
.source "Escaper.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/escape/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/escape/f;


# direct methods
.method constructor <init>(Lcom/google/common/escape/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/escape/f$a;->a:Lcom/google/common/escape/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/escape/f$a;->a:Lcom/google/common/escape/f;

    invoke-virtual {v0, p1}, Lcom/google/common/escape/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/common/escape/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
