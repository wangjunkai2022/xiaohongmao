.class final Lcom/qennnsad/aknkaksd/f$i;
.super Ljava/lang/Object;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/d$g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private b:Landroid/app/Service;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/f$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singletonCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$i;->a:Lcom/qennnsad/aknkaksd/f$k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$i;-><init>(Lcom/qennnsad/aknkaksd/f$k;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Service;)Lh6/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "service"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/f$i;->c(Landroid/app/Service;)Lcom/qennnsad/aknkaksd/f$i;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/qennnsad/aknkaksd/d$g;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$i;->b:Landroid/app/Service;

    const-class v1, Landroid/app/Service;

    invoke-static {v0, v1}, Ldagger/internal/p;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/f$j;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$i;->a:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$i;->b:Landroid/app/Service;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/f$j;-><init>(Lcom/qennnsad/aknkaksd/f$k;Landroid/app/Service;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v0
.end method

.method public bridge synthetic build()Lf6/d;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/f$i;->b()Lcom/qennnsad/aknkaksd/d$g;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/app/Service;)Lcom/qennnsad/aknkaksd/f$i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Service;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$i;->b:Landroid/app/Service;

    return-object p0
.end method
