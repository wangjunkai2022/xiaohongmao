.class public Lcom/gigamole/infinitecycleviewpager/b$e;
.super Ljava/lang/Object;
.source "InfiniteCycleManager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gigamole/infinitecycleviewpager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/gigamole/infinitecycleviewpager/b;


# direct methods
.method protected constructor <init>(Lcom/gigamole/infinitecycleviewpager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->P(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/e;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->P(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/e;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/gigamole/infinitecycleviewpager/e;->b(Landroid/view/View;F)V

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3, v1}, Lcom/gigamole/infinitecycleviewpager/b;->Q(Lcom/gigamole/infinitecycleviewpager/b;Landroid/view/View;)V

    .line 4
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->R(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result v3

    const/high16 v4, -0x40000000    # -2.0f

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_4

    cmpl-float v3, v2, v8

    if-gtz v3, :cond_3

    cmpg-float v3, v2, v4

    if-ltz v3, :cond_3

    .line 5
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->d(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result v3

    if-eqz v3, :cond_1

    cmpl-float v3, v2, v9

    if-gtz v3, :cond_3

    :cond_1
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->d(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result v3

    if-eqz v3, :cond_2

    cmpg-float v3, v2, v7

    if-gez v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v2, 0x8

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 8
    :cond_4
    :goto_1
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->g(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :goto_2
    int-to-float v3, v3

    .line 9
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v10}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v10

    mul-float v10, v10, v3

    .line 10
    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->i(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    mul-float v11, v11, v3

    sub-float v12, v3, v10

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v12, v12, v13

    .line 11
    iget-object v14, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v14}, Lcom/gigamole/infinitecycleviewpager/b;->j(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v14

    mul-float v14, v14, v3

    sub-float v14, v3, v14

    mul-float v14, v14, v13

    .line 12
    iget-object v15, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v15}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v15

    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v6}, Lcom/gigamole/infinitecycleviewpager/b;->i(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v6

    add-float/2addr v15, v6

    mul-float v15, v15, v3

    sub-float v6, v3, v15

    mul-float v6, v6, v13

    .line 13
    iget-object v15, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v15}, Lcom/gigamole/infinitecycleviewpager/b;->R(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result v15

    const/4 v13, 0x4

    const/high16 v17, -0x41000000    # -0.5f

    const/16 v18, 0x0

    if-ge v15, v13, :cond_6

    iget-object v15, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v15}, Lcom/gigamole/infinitecycleviewpager/b;->d(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result v15

    if-nez v15, :cond_6

    cmpl-float v15, v2, v4

    if-lez v15, :cond_6

    cmpg-float v15, v2, v7

    if-gez v15, :cond_6

    sub-float v6, v7, v2

    .line 14
    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    sub-float v12, v3, v12

    .line 15
    iget-object v13, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v13}, Lcom/gigamole/infinitecycleviewpager/b;->k(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v13

    add-float/2addr v12, v13

    mul-float v3, v3, v8

    sub-float/2addr v3, v10

    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v10}, Lcom/gigamole/infinitecycleviewpager/b;->k(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v10

    mul-float v10, v10, v8

    sub-float/2addr v3, v10

    mul-float v3, v3, v6

    add-float/2addr v12, v3

    .line 16
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->f(Lcom/gigamole/infinitecycleviewpager/b;)I

    goto/16 :goto_6

    .line 17
    :cond_6
    iget-object v15, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v15}, Lcom/gigamole/infinitecycleviewpager/b;->R(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result v15

    if-le v15, v5, :cond_7

    cmpl-float v15, v2, v4

    if-ltz v15, :cond_7

    cmpg-float v15, v2, v7

    if-gez v15, :cond_7

    add-float v6, v2, v9

    add-float/2addr v6, v9

    .line 18
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v10}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    mul-float v10, v3, v8

    add-float/2addr v3, v12

    .line 19
    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->k(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    sub-float/2addr v3, v12

    mul-float v3, v3, v6

    sub-float v12, v10, v3

    goto/16 :goto_6

    :cond_7
    cmpl-float v15, v2, v7

    if-ltz v15, :cond_9

    cmpg-float v15, v2, v17

    if-gtz v15, :cond_9

    const/high16 v15, 0x3f000000    # 0.5f

    add-float v10, v2, v15

    mul-float v10, v10, v8

    add-float/2addr v10, v9

    sub-float v13, v9, v10

    .line 20
    iget-object v15, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v15}, Lcom/gigamole/infinitecycleviewpager/b;->l(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v15

    if-eqz v15, :cond_8

    sub-float/2addr v3, v11

    sub-float/2addr v3, v14

    .line 21
    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->k(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    add-float/2addr v3, v11

    .line 22
    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->i(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->i(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    mul-float v12, v12, v13

    sub-float/2addr v11, v12

    sub-float v6, v3, v6

    .line 23
    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->m(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    add-float/2addr v6, v12

    mul-float v6, v6, v10

    sub-float/2addr v3, v6

    move v12, v3

    goto/16 :goto_6

    :cond_8
    sub-float/2addr v3, v12

    .line 24
    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v6}, Lcom/gigamole/infinitecycleviewpager/b;->k(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v6

    add-float/2addr v3, v6

    .line 25
    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v6}, Lcom/gigamole/infinitecycleviewpager/b;->j(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v6

    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->j(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    sub-float/2addr v11, v12

    mul-float v11, v11, v13

    sub-float/2addr v6, v11

    sub-float v11, v3, v14

    .line 26
    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->m(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    add-float/2addr v11, v12

    mul-float v11, v11, v10

    sub-float/2addr v3, v11

    move v12, v3

    :goto_3
    move v11, v6

    goto/16 :goto_6

    :cond_9
    cmpl-float v15, v2, v17

    if-ltz v15, :cond_c

    cmpg-float v15, v2, v18

    if-gtz v15, :cond_c

    neg-float v3, v2

    mul-float v3, v3, v8

    .line 27
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v10}, Lcom/gigamole/infinitecycleviewpager/b;->j(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v10

    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->l(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->i(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    mul-float v11, v11, v3

    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    :goto_4
    sub-float v11, v10, v11

    .line 28
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v10}, Lcom/gigamole/infinitecycleviewpager/b;->l(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v10

    if-eqz v10, :cond_b

    move v14, v6

    :cond_b
    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v6}, Lcom/gigamole/infinitecycleviewpager/b;->m(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v6

    sub-float/2addr v14, v6

    mul-float v12, v14, v3

    goto/16 :goto_6

    :cond_c
    cmpl-float v15, v2, v18

    if-ltz v15, :cond_f

    const/high16 v15, 0x3f000000    # 0.5f

    cmpg-float v19, v2, v15

    if-gtz v19, :cond_f

    mul-float v3, v2, v8

    sub-float v10, v9, v3

    .line 29
    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->l(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v10}, Lcom/gigamole/infinitecycleviewpager/b;->j(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v10

    move v11, v10

    goto :goto_5

    :cond_d
    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->i(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->i(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    mul-float v12, v12, v10

    add-float/2addr v11, v12

    .line 30
    :goto_5
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v10}, Lcom/gigamole/infinitecycleviewpager/b;->l(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v10

    if-eqz v10, :cond_e

    move v14, v6

    :cond_e
    neg-float v6, v14

    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v10}, Lcom/gigamole/infinitecycleviewpager/b;->m(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v10

    add-float/2addr v6, v10

    mul-float v12, v6, v3

    goto/16 :goto_6

    :cond_f
    const/high16 v15, 0x3f000000    # 0.5f

    cmpl-float v16, v2, v15

    if-ltz v16, :cond_11

    cmpg-float v16, v2, v9

    if-gtz v16, :cond_11

    sub-float v10, v2, v15

    mul-float v10, v10, v8

    sub-float v13, v9, v10

    .line 31
    iget-object v15, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v15}, Lcom/gigamole/infinitecycleviewpager/b;->l(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 32
    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    iget-object v15, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v15}, Lcom/gigamole/infinitecycleviewpager/b;->i(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v15

    mul-float v15, v15, v13

    add-float/2addr v12, v15

    neg-float v13, v6

    .line 33
    iget-object v15, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v15}, Lcom/gigamole/infinitecycleviewpager/b;->m(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v15

    add-float/2addr v13, v15

    neg-float v3, v3

    add-float/2addr v3, v11

    add-float/2addr v3, v14

    add-float/2addr v3, v6

    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v6}, Lcom/gigamole/infinitecycleviewpager/b;->k(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v6

    sub-float/2addr v3, v6

    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v6}, Lcom/gigamole/infinitecycleviewpager/b;->m(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v6

    sub-float/2addr v3, v6

    mul-float v3, v3, v10

    add-float/2addr v13, v3

    move v11, v12

    move v12, v13

    goto/16 :goto_6

    .line 34
    :cond_10
    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v6}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v6

    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->j(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    iget-object v15, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v15}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v15

    sub-float/2addr v11, v15

    mul-float v11, v11, v13

    add-float/2addr v6, v11

    neg-float v11, v14

    .line 35
    iget-object v13, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v13}, Lcom/gigamole/infinitecycleviewpager/b;->m(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v13

    add-float/2addr v11, v13

    neg-float v3, v3

    add-float/2addr v3, v14

    add-float/2addr v3, v12

    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->k(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    sub-float/2addr v3, v12

    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->m(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    sub-float/2addr v3, v12

    mul-float v3, v3, v10

    add-float/2addr v11, v3

    move v12, v11

    goto/16 :goto_3

    .line 36
    :cond_11
    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v6}, Lcom/gigamole/infinitecycleviewpager/b;->R(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result v6

    if-le v6, v5, :cond_12

    cmpl-float v6, v2, v9

    if-lez v6, :cond_12

    cmpg-float v6, v2, v8

    if-gtz v6, :cond_12

    sub-float v6, v2, v9

    add-float/2addr v6, v9

    sub-float v6, v9, v6

    .line 37
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v10}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    sub-float v10, v3, v12

    .line 38
    iget-object v13, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v13}, Lcom/gigamole/infinitecycleviewpager/b;->k(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v13

    add-float/2addr v10, v13

    neg-float v10, v10

    add-float/2addr v3, v12

    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v12}, Lcom/gigamole/infinitecycleviewpager/b;->k(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v12

    sub-float/2addr v3, v12

    mul-float v3, v3, v6

    add-float v12, v10, v3

    goto :goto_6

    .line 39
    :cond_12
    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v6}, Lcom/gigamole/infinitecycleviewpager/b;->R(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result v6

    if-ge v6, v13, :cond_13

    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v6}, Lcom/gigamole/infinitecycleviewpager/b;->d(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result v6

    if-nez v6, :cond_13

    cmpl-float v6, v2, v9

    if-lez v6, :cond_13

    cmpg-float v6, v2, v8

    if-gez v6, :cond_13

    sub-float v6, v9, v2

    .line 40
    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    sub-float v12, v3, v12

    .line 41
    iget-object v13, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v13}, Lcom/gigamole/infinitecycleviewpager/b;->k(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v13

    add-float/2addr v12, v13

    neg-float v12, v12

    mul-float v3, v3, v8

    sub-float/2addr v3, v10

    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v10}, Lcom/gigamole/infinitecycleviewpager/b;->k(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v10

    mul-float v10, v10, v8

    sub-float/2addr v3, v10

    mul-float v3, v3, v6

    add-float/2addr v12, v3

    .line 42
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->f(Lcom/gigamole/infinitecycleviewpager/b;)I

    goto :goto_6

    .line 43
    :cond_13
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->h(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v11

    const/4 v12, 0x0

    .line 44
    :goto_6
    invoke-static {v1, v11}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 45
    invoke-static {v1, v11}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 46
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->g(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v1, v12}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_7

    .line 47
    :cond_14
    invoke-static {v1, v12}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 48
    :goto_7
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->R(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result v3

    const/4 v6, 0x2

    const/4 v10, 0x1

    if-ne v3, v6, :cond_15

    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3, v10}, Lcom/gigamole/infinitecycleviewpager/b;->o(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    .line 49
    :cond_15
    sget-object v3, Lcom/gigamole/infinitecycleviewpager/b$d;->a:[I

    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v11}, Lcom/gigamole/infinitecycleviewpager/b;->p(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/b$f;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v3, v3, v11

    if-eq v3, v10, :cond_26

    if-eq v3, v6, :cond_21

    .line 50
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->N(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 51
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/gigamole/infinitecycleviewpager/b;->o(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    .line 52
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3, v4}, Lcom/gigamole/infinitecycleviewpager/b;->v(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    goto/16 :goto_a

    .line 53
    :cond_16
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->y(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-nez v3, :cond_17

    cmpl-float v3, v2, v9

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3, v10}, Lcom/gigamole/infinitecycleviewpager/b;->z(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    goto :goto_8

    .line 54
    :cond_17
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->y(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-eqz v3, :cond_18

    cmpl-float v3, v2, v7

    if-nez v3, :cond_18

    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3, v10}, Lcom/gigamole/infinitecycleviewpager/b;->o(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    goto :goto_8

    .line 55
    :cond_18
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->y(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-nez v3, :cond_19

    cmpl-float v3, v2, v7

    if-eqz v3, :cond_1a

    :cond_19
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->y(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->n(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-eqz v3, :cond_1b

    cmpl-float v3, v2, v4

    if-nez v3, :cond_1b

    .line 56
    :cond_1a
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/gigamole/infinitecycleviewpager/b;->o(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    .line 57
    :cond_1b
    :goto_8
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->A(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-nez v3, :cond_1d

    cmpl-float v3, v2, v7

    if-nez v3, :cond_1d

    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3, v10}, Lcom/gigamole/infinitecycleviewpager/b;->B(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    :cond_1c
    :goto_9
    const/4 v4, 0x0

    goto :goto_a

    .line 58
    :cond_1d
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->A(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-eqz v3, :cond_1e

    cmpl-float v3, v2, v9

    if-nez v3, :cond_1e

    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3, v10}, Lcom/gigamole/infinitecycleviewpager/b;->v(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    goto :goto_9

    .line 59
    :cond_1e
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->A(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-nez v3, :cond_1f

    cmpl-float v3, v2, v9

    if-eqz v3, :cond_20

    :cond_1f
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->A(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->u(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-eqz v3, :cond_1c

    cmpl-float v3, v2, v8

    if-nez v3, :cond_1c

    .line 60
    :cond_20
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/gigamole/infinitecycleviewpager/b;->v(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    :goto_a
    cmpl-float v3, v2, v18

    if-nez v3, :cond_2b

    :goto_b
    const/4 v6, 0x1

    goto/16 :goto_d

    :cond_21
    const/4 v4, 0x0

    .line 61
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3, v4}, Lcom/gigamole/infinitecycleviewpager/b;->v(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    .line 62
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->s(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/b$f;

    move-result-object v3

    sget-object v4, Lcom/gigamole/infinitecycleviewpager/b$f;->c:Lcom/gigamole/infinitecycleviewpager/b$f;

    if-ne v3, v4, :cond_24

    cmpl-float v3, v2, v18

    if-ltz v3, :cond_22

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_22

    .line 63
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->n(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 64
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3, v10}, Lcom/gigamole/infinitecycleviewpager/b;->o(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    goto :goto_b

    :cond_22
    cmpl-float v3, v2, v17

    if-lez v3, :cond_23

    cmpg-float v3, v2, v18

    if-gtz v3, :cond_23

    goto :goto_b

    :cond_23
    cmpl-float v3, v2, v7

    if-lez v3, :cond_25

    cmpg-float v3, v2, v17

    if-gez v3, :cond_25

    .line 65
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->n(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->r(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/gigamole/infinitecycleviewpager/g;->getChildCount()I

    move-result v3

    if-le v3, v5, :cond_25

    goto :goto_b

    .line 66
    :cond_24
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->w(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_25

    cmpl-float v3, v2, v18

    if-ltz v3, :cond_25

    cmpg-float v3, v2, v4

    if-gez v3, :cond_25

    goto :goto_b

    :cond_25
    const/4 v4, 0x0

    goto :goto_c

    .line 67
    :cond_26
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/gigamole/infinitecycleviewpager/b;->o(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    .line 68
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->s(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/b$f;

    move-result-object v3

    sget-object v6, Lcom/gigamole/infinitecycleviewpager/b$f;->b:Lcom/gigamole/infinitecycleviewpager/b$f;

    if-ne v3, v6, :cond_2a

    cmpl-float v3, v2, v17

    if-lez v3, :cond_27

    cmpg-float v3, v2, v18

    if-gtz v3, :cond_27

    .line 69
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->u(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 70
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3, v10}, Lcom/gigamole/infinitecycleviewpager/b;->v(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    goto/16 :goto_b

    :cond_27
    cmpl-float v3, v2, v18

    if-ltz v3, :cond_28

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v6, v2, v3

    if-gez v6, :cond_29

    goto/16 :goto_b

    :cond_28
    const/high16 v3, 0x3f000000    # 0.5f

    :cond_29
    cmpl-float v3, v2, v3

    if-lez v3, :cond_2b

    cmpg-float v3, v2, v9

    if-gez v3, :cond_2b

    .line 71
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->u(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result v3

    if-nez v3, :cond_2b

    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->r(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/gigamole/infinitecycleviewpager/g;->getChildCount()I

    move-result v3

    if-le v3, v5, :cond_2b

    goto/16 :goto_b

    .line 72
    :cond_2a
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->w(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2b

    cmpl-float v3, v2, v17

    if-lez v3, :cond_2b

    cmpg-float v3, v2, v18

    if-gtz v3, :cond_2b

    goto/16 :goto_b

    :cond_2b
    :goto_c
    const/4 v6, 0x0

    :goto_d
    if-eqz v6, :cond_2c

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->bringToFront()V

    .line 74
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->C(Lcom/gigamole/infinitecycleviewpager/b;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 75
    :cond_2c
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->P(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/e;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 76
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/b$e;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v3}, Lcom/gigamole/infinitecycleviewpager/b;->P(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/e;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/gigamole/infinitecycleviewpager/e;->a(Landroid/view/View;F)V

    :cond_2d
    return-void
.end method
