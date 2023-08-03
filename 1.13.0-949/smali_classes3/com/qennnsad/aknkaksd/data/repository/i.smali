.class public final synthetic Lcom/qennnsad/aknkaksd/data/repository/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lokhttp3/Dns;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/repository/k;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/i;->a:Lcom/qennnsad/aknkaksd/data/repository/k;

    return-void
.end method


# virtual methods
.method public final lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/i;->a:Lcom/qennnsad/aknkaksd/data/repository/k;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/k;->f0(Lcom/qennnsad/aknkaksd/data/repository/k;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
