.class public Lcom/facebook/cache/disk/b;
.super Ljava/lang/Object;
.source "DefaultEntryEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/h;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/cache/disk/g;
    .locals 1

    new-instance v0, Lcom/facebook/cache/disk/b$a;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/b$a;-><init>(Lcom/facebook/cache/disk/b;)V

    return-object v0
.end method
