.class public final synthetic Lp5/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/f;->a:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lp5/f;->b:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lp5/f;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lp5/f;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lp5/f;->a:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lp5/f;->b:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lp5/f;->c:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lp5/f;->d:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, p1}, Lp5/h;->b(Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V

    return-void
.end method
