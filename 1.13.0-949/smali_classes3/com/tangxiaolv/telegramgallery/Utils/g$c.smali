.class Lcom/tangxiaolv/telegramgallery/Utils/g$c;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/g;->o(I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method constructor <init>([Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c;->a:[Ljava/lang/String;

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    move-object/from16 v8, p0

    const-string v1, "datetaken"

    const-string v2, "_data"

    const-string v3, "bucket_display_name"

    const-string v4, "bucket_id"

    const-string v5, "_id"

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 5
    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 6
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/Camera/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v0, v8, Lcom/tangxiaolv/telegramgallery/Utils/g$c;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v13, v0

    if-lez v13, :cond_1

    .line 9
    array-length v0, v0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v0, :cond_1

    const-string v14, "mime_type"

    const-string v15, " !=?"

    if-nez v13, :cond_0

    .line 10
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v12, " and "

    .line 11
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 13
    :try_start_0
    sget-object v0, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    .line 14
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 15
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/g;->i()[Ljava/lang/String;

    move-result-object v18

    iget-object v0, v8, Lcom/tangxiaolv/telegramgallery/Utils/g$c;->a:[Ljava/lang/String;

    const-string v21, "datetaken DESC"

    move-object/from16 v20, v0

    .line 16
    invoke-static/range {v16 .. v21}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v14, :cond_8

    .line 17
    :try_start_1
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 18
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 19
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 20
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v18, v7

    .line 21
    :try_start_2
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v19, v1

    :try_start_3
    const-string v1, "orientation"

    .line 22
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v20, v2

    :try_start_4
    const-string v2, "_size"

    .line 23
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 24
    :goto_2
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 25
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v23, v0

    .line 26
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v32, v15

    .line 27
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v33, v13

    .line 28
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 30
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 31
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v13, :cond_7

    .line 32
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_7

    if-nez v24, :cond_2

    goto/16 :goto_6

    :cond_2
    move/from16 v34, v1

    .line 33
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    const/16 v31, 0x0

    move-object/from16 v24, v1

    move/from16 v25, v0

    move-object/from16 v29, v13

    invoke-direct/range {v24 .. v31}, Lcom/tangxiaolv/telegramgallery/Utils/g$k;-><init>(IIJLjava/lang/String;IZ)V

    if-nez v21, :cond_3

    move/from16 v24, v2

    .line 34
    new-instance v2, Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move/from16 v25, v7

    sget-object v7, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    move/from16 v26, v12

    sget v12, Lcom/tangxiaolv/telegramgallery/q$o;->b:I

    invoke-virtual {v7, v12}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    invoke-direct {v2, v12, v7, v1, v12}, Lcom/tangxiaolv/telegramgallery/Utils/g$d;-><init>(ILjava/lang/String;Lcom/tangxiaolv/telegramgallery/Utils/g$k;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 35
    :try_start_6
    invoke-virtual {v6, v12, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    move/from16 v24, v2

    move/from16 v25, v7

    move/from16 v26, v12

    move-object/from16 v2, v21

    .line 36
    :goto_3
    invoke-virtual {v2, v1}, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->a(Lcom/tangxiaolv/telegramgallery/Utils/g$k;)V

    .line 37
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-nez v7, :cond_6

    .line 38
    new-instance v7, Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    const/4 v12, 0x0

    invoke-direct {v7, v0, v15, v1, v12}, Lcom/tangxiaolv/telegramgallery/Utils/g$d;-><init>(ILjava/lang/String;Lcom/tangxiaolv/telegramgallery/Utils/g$k;Z)V

    .line 39
    invoke-virtual {v9, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v22, :cond_5

    .line 40
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 41
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_4

    const/4 v12, 0x1

    .line 42
    invoke-virtual {v6, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 43
    :cond_4
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_5

    .line 45
    :cond_5
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_6
    :goto_5
    invoke-virtual {v7, v1}, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->a(Lcom/tangxiaolv/telegramgallery/Utils/g$k;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v21, v2

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v21, v2

    goto :goto_a

    :cond_7
    :goto_6
    move/from16 v34, v1

    move/from16 v24, v2

    move/from16 v25, v7

    move/from16 v26, v12

    :goto_7
    move/from16 v0, v23

    move/from16 v2, v24

    move/from16 v7, v25

    move/from16 v12, v26

    move/from16 v15, v32

    move/from16 v13, v33

    move/from16 v1, v34

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object/from16 v19, v1

    :goto_8
    move-object/from16 v20, v2

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v18, v7

    goto :goto_9

    :cond_8
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v18, v7

    const/16 v21, 0x0

    const/16 v22, 0x0

    :cond_9
    if-eqz v14, :cond_a

    .line 47
    :try_start_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v18, v7

    const/4 v14, 0x0

    :goto_9
    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 49
    :goto_a
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_d

    if-eqz v14, :cond_a

    .line 50
    :try_start_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 51
    :cond_a
    :goto_b
    :try_start_a
    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 52
    :try_start_b
    sget-object v0, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    .line 53
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 54
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/g;->j()[Ljava/lang/String;

    move-result-object v25

    .line 55
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    iget-object v0, v8, Lcom/tangxiaolv/telegramgallery/Utils/g$c;->a:[Ljava/lang/String;

    const-string v28, "datetaken DESC"

    move-object/from16 v27, v0

    .line 56
    invoke-static/range {v23 .. v28}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-eqz v1, :cond_11

    .line 57
    :try_start_c
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 58
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 59
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v4, v20

    .line 60
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v5, v19

    .line 61
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    const/4 v13, 0x0

    const/16 v16, 0x0

    .line 62
    :goto_c
    :try_start_d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 63
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 64
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 65
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 66
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 67
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    if-eqz v12, :cond_f

    .line 68
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_b

    goto/16 :goto_f

    .line 69
    :cond_b
    new-instance v14, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v23, v14

    move/from16 v24, v7

    move-object/from16 v28, v12

    invoke-direct/range {v23 .. v30}, Lcom/tangxiaolv/telegramgallery/Utils/g$k;-><init>(IIJLjava/lang/String;IZ)V

    if-nez v16, :cond_c

    .line 70
    new-instance v15, Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move/from16 v19, v0

    sget-object v0, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    move/from16 v20, v2

    sget v2, Lcom/tangxiaolv/telegramgallery/q$o;->c:I

    .line 71
    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v23, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v15, v3, v0, v14, v2}, Lcom/tangxiaolv/telegramgallery/Utils/g$d;-><init>(ILjava/lang/String;Lcom/tangxiaolv/telegramgallery/Utils/g$k;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object/from16 v2, v18

    .line 72
    :try_start_e
    invoke-virtual {v2, v3, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_d

    :cond_c
    move/from16 v19, v0

    move/from16 v20, v2

    move/from16 v23, v3

    move-object/from16 v2, v18

    move-object/from16 v15, v16

    .line 73
    :goto_d
    invoke-virtual {v15, v14}, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->a(Lcom/tangxiaolv/telegramgallery/Utils/g$k;)V

    .line 74
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    if-nez v0, :cond_e

    .line 75
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    const/4 v3, 0x1

    invoke-direct {v0, v7, v11, v14, v3}, Lcom/tangxiaolv/telegramgallery/Utils/g$d;-><init>(ILjava/lang/String;Lcom/tangxiaolv/telegramgallery/Utils/g$k;Z)V

    .line 76
    invoke-virtual {v9, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v13, :cond_d

    if-eqz v10, :cond_d

    .line 77
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x0

    .line 78
    invoke-virtual {v2, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v13, v7

    goto :goto_e

    :cond_d
    const/4 v11, 0x0

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_e
    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 81
    :goto_e
    invoke-virtual {v0, v14}, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->a(Lcom/tangxiaolv/telegramgallery/Utils/g$k;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object/from16 v18, v2

    move-object/from16 v16, v15

    goto :goto_10

    :catchall_7
    move-exception v0

    goto :goto_11

    :cond_f
    :goto_f
    move/from16 v19, v0

    move/from16 v20, v2

    move/from16 v23, v3

    move-object/from16 v2, v18

    const/4 v3, 0x1

    const/4 v11, 0x0

    move-object/from16 v18, v2

    :goto_10
    move/from16 v0, v19

    move/from16 v2, v20

    move/from16 v3, v23

    goto/16 :goto_c

    :cond_10
    move-object/from16 v2, v18

    goto :goto_12

    :catchall_8
    move-exception v0

    move-object/from16 v2, v18

    :goto_11
    move-object/from16 v16, v13

    move-object v13, v1

    goto :goto_15

    :catchall_9
    move-exception v0

    move-object/from16 v2, v18

    move-object v13, v1

    goto :goto_14

    :cond_11
    move-object/from16 v2, v18

    const/4 v13, 0x0

    :goto_12
    if-eqz v1, :cond_12

    .line 82
    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_13

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 83
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_13
    move-object v7, v13

    goto :goto_17

    :catchall_a
    move-exception v0

    move-object/from16 v2, v18

    const/4 v13, 0x0

    goto :goto_14

    :catchall_b
    move-exception v0

    move-object/from16 v2, v18

    move-object v13, v14

    :goto_14
    const/16 v16, 0x0

    .line 84
    :goto_15
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-eqz v13, :cond_13

    .line 85
    :try_start_11
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_16

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 86
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_16
    move-object/from16 v7, v16

    .line 87
    :goto_17
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;

    move-object v1, v0

    move-object v9, v2

    move-object/from16 v2, p0

    move-object/from16 v3, v21

    move-object v4, v6

    move-object/from16 v5, v22

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/g$c;Lcom/tangxiaolv/telegramgallery/Utils/g$d;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    return-void

    :catchall_c
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_14

    .line 88
    :try_start_12
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_18

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 89
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :cond_14
    :goto_18
    throw v1

    :catchall_d
    move-exception v0

    move-object v1, v0

    if-eqz v14, :cond_15

    .line 91
    :try_start_13
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_19

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 92
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    :cond_15
    :goto_19
    throw v1
.end method
