.class public abstract Lcom/google/common/collect/i3$m;
.super Lcom/google/common/collect/i3$l;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i3$l<",
        "TK0;TV0;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/i3$l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/h3;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i3$m;->l()Lcom/google/common/collect/y4;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lcom/google/common/collect/h3;)Lcom/google/common/collect/h3;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/i3$m;->m(Lcom/google/common/collect/h3;)Lcom/google/common/collect/y4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j()Lcom/google/common/collect/n4;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i3$m;->l()Lcom/google/common/collect/y4;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(Lcom/google/common/collect/h3;)Lcom/google/common/collect/n4;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/i3$m;->m(Lcom/google/common/collect/h3;)Lcom/google/common/collect/y4;

    move-result-object p1

    return-object p1
.end method

.method public abstract l()Lcom/google/common/collect/y4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/y4<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public m(Lcom/google/common/collect/h3;)Lcom/google/common/collect/y4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lcom/google/common/collect/h3<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/y4<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/i3$l;->k(Lcom/google/common/collect/h3;)Lcom/google/common/collect/n4;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/y4;

    return-object p1
.end method
