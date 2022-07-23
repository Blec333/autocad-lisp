using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
 
using Autodesk.AutoCAD.Runtime;
using Autodesk.AutoCAD.ApplicationServices;
using Autodesk.AutoCAD.DatabaseServices;
using Autodesk.Fabrication;
using Autodesk.Fabrication.Geometry;
 
[assembly: CommandClass(typeof(FabNet.CustomCommands))]
 
namespace FabNet
{
    public class CustomCommands
    {
        [CommandMethod("FixElbows")]
        public void FixElbowsFunction()
        {
                Item itm = Job.Items.FirstOrDefault(x => x.CID == 61);
                if (itm != null)
                {
                    ItemSelectOption opt = itm.Options.FirstOrDefault(x => x.Name == "Single Segments") as ItemSelectOption;
                    if (opt != null)
                        opt.Options.FirstOrDefault(x => x.Name == "No").IsSelected = true;
                }
        }
 
 
        [CommandMethod("Fixelbows2")]
        public void Fixelbows2Function()
        {
            Item itm = Job.Items.FirstOrDefault(x => x.SourceName == "*Welded Elbow");
            if (itm != null)
            {
                ItemSelectOption opt = itm.Options.FirstOrDefault(x => x.Name == "Single Segments") as ItemSelectOption;
                if (opt != null)
                    opt.Options.FirstOrDefault(x => x.Name == "No").IsSelected = true;
            }
        }
 
        [CommandMethod("Connectors")]
        public void ConnectorsFunction()
        {
            Item itm = Job.Items.FirstOrDefault(x => x.SourceName == "*Welded Elbow");
            if (itm != null)
            {
                ConnectorInfo newConnector = Database.Connectors.FirstOrDefault(x => x.Name == "None");
                if (newConnector != null)
                    for (int i = 0; i < itm.Connectors.Count; i++)
                    {
                        if (itm.ChangeConnector(newConnector, i).Status == Autodesk.Fabrication.Results.ResultStatus.Succeeded)
                            itm.Connectors[i].IsLocked = true;
                    }
                itm.Update();
            }
        }
 
 
        [LispFunction("ConnVector")]
        public ResultBuffer ConnVectorLispFunction(ResultBuffer args)
        {
            string eHandle;
            short connectorIndex;
            Point3D p3;
            TypedValue[] input = args.AsArray();
            eHandle = (string)input[0].Value;
            connectorIndex = (short)input[1].Value;
            Item item = Job.GetFabricationItemFromACADHandle(eHandle);
            p3 = item.GetConnectorDirectionVector(connectorIndex);
            ResultBuffer resBuff = new ResultBuffer();
            resBuff.Add(new TypedValue((int)LispDataType.ListBegin));
            resBuff.Add(new TypedValue((int)LispDataType.Double, p3.X));
            resBuff.Add(new TypedValue((int)LispDataType.Double, p3.Y));
            resBuff.Add(new TypedValue((int)LispDataType.Double, p3.Z));
            resBuff.Add(new TypedValue((int)LispDataType.ListEnd));
            return resBuff;
            //Set the first argument to the entity handle
            //Set the second argument to the connector index
            //Get fabrication item from the entity handle
            //get the connector vector of the specified index
            //Prepare and return the Result buffer as a point (list of reals)
        }
 
 
        [CommandMethod("TextCommandTest2")]
        public void TextCommandTest2()
        {
            Document acDoc = Application.DocumentManager.MdiActiveDocument;
            Database acCurDb = acDoc.Database;
            using (Transaction acTrans = acCurDb.TransactionManager.StartTransaction())
            {
                BlockTable acBlkTbl;
                acBlkTbl = acTrans.GetObject(acCurDb.BlockTableId, OpenMode.ForRead) as BlockTable;
                BlockTableRecord acBlkTblRec;
                acBlkTblRec = acTrans.GetObject(acBlkTbl[BlockTableRecord.ModelSpace], OpenMode.ForWrite) as BlockTableRecord;
                MText objText = new MText();
                objText.SetDatabaseDefaults();
                objText.Location = new Autodesk.AutoCAD.Geometry.Point3d(2, 2, 0);
                objText.Contents = "this is the message for text command test number two";
                objText.TextStyleId = acCurDb.Textstyle;
                acBlkTblRec.AppendEntity(objText);
                acTrans.AddNewlyCreatedDBObject(objText, true);
                acTrans.Commit();
                // Get the current document and database, and start a transaction
                // Starts a new transaction with the Transaction Manager
                // Open the Block table record for read
                // Open the Block table record Model space for write
                /* Creates a new MText object and assigns it a location, text value and text style */
                // Specify the insertion point of the MText object
                // Set the default properties for the MText object
                // Set the text string for the MText object
                // Set the text style for the MText object
                // Appends the new MText object to model space
                // Appends to new MText object to the active transaction
                // Saves the changes to the database and closes the transaction
            }
        }
    }
}