.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/base/d;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/g;->a:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/g;->a:Lcom/qennnsad/aknkaksd/domain/base/d;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/h;->c(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/PageBean;

    move-result-object p1

    return-object p1
.end method
