.class public final synthetic Liamutkarshtiwari/github/io/ananas/editimage/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/j;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/j;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/j;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/j;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->a0(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
