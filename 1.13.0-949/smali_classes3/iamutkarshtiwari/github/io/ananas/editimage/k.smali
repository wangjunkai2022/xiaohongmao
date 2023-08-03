.class public final synthetic Liamutkarshtiwari/github/io/ananas/editimage/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/k;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/k;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/k;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->W(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
