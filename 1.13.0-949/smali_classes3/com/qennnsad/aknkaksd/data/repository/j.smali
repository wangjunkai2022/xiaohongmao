.class public final synthetic Lcom/qennnsad/aknkaksd/data/repository/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/repository/k;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/k;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/j;->a:Lcom/qennnsad/aknkaksd/data/repository/k;

    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/data/repository/j;->b:Z

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/j;->a:Lcom/qennnsad/aknkaksd/data/repository/k;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/repository/j;->b:Z

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/repository/k;->d0(Lcom/qennnsad/aknkaksd/data/repository/k;ZLokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
