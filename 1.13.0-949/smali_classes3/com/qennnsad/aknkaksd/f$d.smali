.class final Lcom/qennnsad/aknkaksd/f$d;
.super Ljava/lang/Object;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/d$c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;


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
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$d;->a:Lcom/qennnsad/aknkaksd/f$k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$d;-><init>(Lcom/qennnsad/aknkaksd/f$k;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/qennnsad/aknkaksd/d$c;
    .locals 3

    new-instance v0, Lcom/qennnsad/aknkaksd/f$e;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$d;->a:Lcom/qennnsad/aknkaksd/f$k;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/f$e;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v0
.end method

.method public bridge synthetic build()Lf6/b;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/f$d;->a()Lcom/qennnsad/aknkaksd/d$c;

    move-result-object v0

    return-object v0
.end method
