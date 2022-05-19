using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Threading.Tasks;
using NuCharacter.Models;
using SQLite;

namespace NuCharacter.DataBase
{
    internal static class Local_DB
    {
        public static SQLiteConnection db;
        static Local_DB()
        {
            //File.Delete(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"DataBase\NuCharacter.db"));
        }

        public static void Init()
        {
            if (db != null) return;

            //var filePath = @"DataBase\NuCharacter.db";
            //FileStream fileStream = File.Open(filePath, FileMode.OpenOrCreate);
            ////// получаем поток
            ////StreamWriter output = new StreamWriter(fileStream);

            var path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"DataBase\NuCharacter.db");
            db = new SQLiteConnection(path);

            #region Create tables
            db.CreateTable<User>();
            db.CreateTable<Group>();
            db.CreateTable<Character>();
            #endregion
        }

        public static void Insert(object obj)
        {
            Init();
            if (obj == null) return;


            db.Insert(obj);
        }

        public static void Remove(object obj)
        {
            Init();
            if (obj == null) return;

            db.Delete(obj);

        }

        public static void Update(object obj)
        {
            Init();
            //if (obj == null) return;

            db.Update(obj);

        }
        public static T Select<T>(int id) where T : new()
        {
            Init();

            return db.Get<T>(id);

        }
        public static ObservableCollection<T> SelectAll<T>() where T : new()
        {
            Init();
            var collection = new ObservableCollection<T>(db.Table<T>());

            return collection;
        }
    }
}
