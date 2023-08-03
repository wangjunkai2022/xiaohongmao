.class final Lcom/facebook/datasource/e$a;
.super Ljava/lang/Object;
.source "DataSources.java"

# interfaces
.implements Lcom/facebook/common/internal/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/e;->a(Ljava/lang/Throwable;)Lcom/facebook/common/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/m<",
        "Lcom/facebook/datasource/d<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$failure"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/datasource/e$a;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/datasource/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/datasource/e$a;->a:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/e;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/datasource/e$a;->a()Lcom/facebook/datasource/d;

    move-result-object v0

    return-object v0
.end method
