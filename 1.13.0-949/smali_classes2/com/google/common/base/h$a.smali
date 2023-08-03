.class Lcom/google/common/base/h$a;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/h;->d(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/google/common/base/h;


# direct methods
.method constructor <init>(Lcom/google/common/base/h;Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/base/h$a;->b:Lcom/google/common/base/h;

    iput-object p2, p0, Lcom/google/common/base/h$a;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/h$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/base/h$a$a;-><init>(Lcom/google/common/base/h$a;)V

    return-object v0
.end method
